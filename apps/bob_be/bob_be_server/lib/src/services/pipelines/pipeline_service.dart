part of bob_app_services;

class PipelineService {
  static Future<UploadConfigResponse> uploadAndParseYamlConfig({
    required Session session,
    required UploadConfigRequest request,
    required String fileContent,
  }) async {
    // final userId = await PipelineAuthService.requireAuth(session, 'upload configuration');

    // Validate request
    // final errors = request.validate();
    // if (errors.isNotEmpty) {
    //   return UploadConfigResponse(
    //     success: false,
    //     message: 'Validation failed: ${errors.join(', ')}',
    //     errors: errors,
    //   );
    // }

    try {
      final contentHash = sha256.convert(utf8.encode(fileContent)).toString();

      // Find or create pipeline
      Pipeline pipeline = await _findOrCreatePipeline(session, request, 1);

      // Check if configuration has changed
      final activeConfig = await PipelineConfiguration.db.findFirstRow(
        session,
        where: (table) =>
            table.id.equals(pipeline.id) & table.isActive.equals(true),
      );

      if (activeConfig?.contentHash == contentHash) {
        return UploadConfigResponse(
          success: true,
          message: 'Configuration unchanged - no update needed',
          pipeline: pipeline,
          configuration: activeConfig,
        );
      }

      // Parse YAML and extract steps
      final steps = await _parseYamlAndCreateSteps(
        session,
        pipeline,
        fileContent,
        request.platform,
      );

      // Save new configuration
      final newConfig = await _saveConfiguration(
        session: session,
        platform: request.platform,
        contentHash: contentHash,
        extractedStepCount: steps.length,
        fileContent: fileContent,
        fileName: request.fileName,
        pipeline: pipeline,
        // userId,
      );

      session.log(
        'Configuration uploaded for pipeline ${pipeline.id}: ${steps.length} steps extracted',
      );

      // Delete old steps for this pipeline
      await session.db.unsafeQuery(
        'DELETE FROM pipeline_steps WHERE "pipelineId" = @pipelineId',
        parameters: QueryParametersNamed(
          {
            'pipelineId': pipeline.id.uuid,
          },
        ),
      );

      // Save new steps
      final savedSteps = <PipelineStep>[];
      for (final step in steps) {
        final savedStep = await PipelineStep.db.insertRow(
          session,
          step.copyWith(configurationId: newConfig.id),
        );
        savedSteps.add(savedStep);
      }

      return UploadConfigResponse(
        success: true,
        message:
            'Configuration updated successfully - ${steps.length} steps extracted',
        pipeline: pipeline,
        steps: steps,
        configuration: newConfig,
        extractedStepCount: steps.length,
      );
    } catch (e, st) {
      session.log(
        'Configuration upload failed: $e\n$st',
        level: LogLevel.error,
      );
      return UploadConfigResponse(
        success: false,
        message: 'Failed to process configuration: ${e.toString()}',
        errors: [e.toString()],
      );
    }
  }

  static Future<Pipeline> _findOrCreatePipeline(
    Session session,
    UploadConfigRequest request,
    int userId,
  ) async {
    // Try to find existing pipeline for this repository + platform
    final existingPipelines = await Pipeline.db.find(
      session,
      where: (t) =>
          t.repositoryName.equals(request.repositoryName) &
          t.platform.equals(request.platform),
    );

    if (existingPipelines.isNotEmpty) {
      // Return the first matching pipeline
      return existingPipelines.first;
    }

    // Create new pipeline
    final pipelineName = _generatePipelineNameFromFile(
      request.fileName,
      request.platform,
    );

    return await Pipeline.db.insertRow(
      session,
      Pipeline(
        name: pipelineName,
        platform: CiCdPlatform.Codemagic,
        repositoryName: request.repositoryName,
      ),
    );
  }

  static Future<List<PipelineStep>> _parseYamlAndCreateSteps(
    Session session,
    Pipeline pipeline,
    String yamlContent,
    CiCdPlatform platform,
  ) async {
    // Delete existing steps for this pipeline
    await PipelineStep.db.deleteWhere(
      session,
      where: (t) => t.pipelineId.equals(pipeline.id),
    );

    // Parse based on platform
    switch (platform) {
      case CiCdPlatform.Codemagic:
        return await _parseCodemagicYaml(session, pipeline, yamlContent);
      case CiCdPlatform.GitHubActions:
      case CiCdPlatform.Jenkins:
        return [];
    }
  }

  /// Parse Codemagic YAML and create steps
  static Future<List<PipelineStep>> _parseCodemagicYaml(
    Session session,
    Pipeline pipeline,
    String yamlContent,
  ) async {
    final doc = loadYaml(yamlContent) as YamlMap;
    final workflows = doc['workflows'] as YamlMap?;

    if (workflows == null) return [];

    final steps = <PipelineStep>[];
    int order = 0;

    // Parse all workflows in the file
    for (final workflowEntry in workflows.entries) {
      final workflowName = workflowEntry.key.toString();
      final workflowConfig = workflowEntry.value as YamlMap;

      // Add workflow marker step
      steps.add(
        PipelineStep(
          name: 'Workflow: ${workflowConfig['name'] ?? workflowName}',
          pipelineId: pipeline.id,
          configurationId: UuidValue.nil,
          // Will be set when saving
          order: order++,
          command: null,
        ),
      );

      // Parse environment setup if exists
      final environment = workflowConfig['environment'] as YamlMap?;
      if (environment != null) {
        final envDetails = <String>[];

        if (environment['flutter'] != null) {
          envDetails.add('Flutter: ${environment['flutter']}');
        }
        if (environment['xcode'] != null) {
          envDetails.add('Xcode: ${environment['xcode']}');
        }
        if (workflowConfig['instance_type'] != null) {
          envDetails.add('Instance: ${workflowConfig['instance_type']}');
        }

        if (envDetails.isNotEmpty) {
          steps.add(
            PipelineStep(
              name: 'Environment Setup',
              pipelineId: pipeline.id,
              configurationId: UuidValue.nil,
              order: order++,
              command: envDetails.join('\n'),
            ),
          );
        }
      }

      // Parse scripts array
      final scripts = workflowConfig['scripts'] as YamlList?;
      if (scripts != null) {
        for (final script in scripts) {
          if (script is YamlMap) {
            final stepName = script['name']?.toString() ?? 'Script $order';
            final scriptContent = script['script']?.toString();

            steps.add(
              PipelineStep(
                name: stepName,
                pipelineId: pipeline.id,
                configurationId: UuidValue.nil,
                order: order++,
                command: scriptContent,
              ),
            );
          }
        }
      }

      // Parse artifacts collection
      final artifacts = workflowConfig['artifacts'] as YamlList?;
      if (artifacts != null && artifacts.isNotEmpty) {
        final artifactPaths = artifacts.map((a) => a.toString()).join('\n');
        steps.add(
          PipelineStep(
            name: 'Collect Artifacts',
            pipelineId: pipeline.id,
            configurationId: UuidValue.nil,
            order: order++,
            command: 'Collecting artifacts:\n$artifactPaths',
          ),
        );
      }

      // Parse publishing steps
      final publishing = workflowConfig['publishing'] as YamlMap?;
      if (publishing != null) {
        // App Store Connect
        if (publishing['app_store_connect'] != null) {
          steps.add(
            PipelineStep(
              name: 'Publish to App Store Connect',
              pipelineId: pipeline.id,
              configurationId: UuidValue.nil,
              order: order++,
              command: 'Publishing to App Store Connect',
            ),
          );
        }

        // Google Play
        if (publishing['google_play'] != null) {
          steps.add(
            PipelineStep(
              name: 'Publish to Google Play',
              pipelineId: pipeline.id,
              configurationId: UuidValue.nil,
              order: order++,
              command: 'Publishing to Google Play',
            ),
          );
        }

        // Email notifications
        if (publishing['email'] != null) {
          steps.add(
            PipelineStep(
              name: 'Send Email Notifications',
              pipelineId: pipeline.id,
              configurationId: UuidValue.nil,
              order: order++,
              command: 'Sending build notifications',
            ),
          );
        }
      }
    }

    return steps;
  }

  static Future<PipelineStep> _createPipelineStep(
    Session session,
    UuidValue pipelineId,
    String name,
    StepType type,
    String command,
    int order, {
    bool isRequired = true,
    int timeoutMinutes = 30,
  }) async {
    final step = PipelineStep(
      pipelineId: pipelineId,
      configurationId: UuidValue.nil,
      // Will be set when configuration is saved
      name: name,
      command: command,
      order: order,
      createdAt: DateTime.now(),
    );

    return await PipelineStep.db.insertRow(session, step);
  }

  static Future<PipelineConfiguration> _saveConfiguration({
    required Session session,
    required Pipeline pipeline,
    required String fileName,
    required String fileContent,
    required String contentHash,
    required CiCdPlatform platform,
    required int extractedStepCount,
  }) async {
    // Get next version number
    final latestConfig = await PipelineConfiguration.db.findFirstRow(
      session,
      where: (t) {
        return t.pipeline.id.equals(pipeline.id);
      },
      orderBy: (t) => t.version,
      orderDescending: true,
    );
    final nextVersion = (latestConfig?.version ?? 0) + 1;

    final config = PipelineConfiguration(
      pipelineId: pipeline.id,
      fileName: fileName,
      fileContent: fileContent,
      contentHash: contentHash,
      platform: platform,
      version: nextVersion,
      isActive: true,
      extractedStepCount: extractedStepCount,
      createdAt: DateTime.now(),
    );

    // Save configuration in transaction
    return await session.db.transaction((transaction) async {
      // Mark all existing configs as inactive
      // await session.db.unsafeQuery(
      //   'UPDATE pipeline_configurations SET "isActive" = false WHERE "pipelineId" = @pipelineId',
      //   parameters: QueryParametersNamed(
      //     {'pipelineId': pipeline.id},
      //   ),
      // );

      // Insert new configuration
      final savedConfig =
          await PipelineConfiguration.db.insertRow(session, config);
      return savedConfig;
    });
  }

  static String _generatePipelineNameFromFile(
    String fileName,
    CiCdPlatform platform,
  ) {
    // Remove extension and clean up name
    String name = fileName.split('.').first;

    // Convert to kebab-case and clean up
    name = name
        .replaceAll(RegExp(r'[^a-zA-Z0-9_-]'), '-')
        .toLowerCase()
        .replaceAll(RegExp(r'-+'), '-')
        .replaceAll(RegExp(r"^-|-"), '');

    if (name.isEmpty || name == 'jenkinsfile') {
      // Generate name based on platform
      switch (platform) {
        case CiCdPlatform.Codemagic:
          name = 'codemagic-pipeline';
          break;
        case CiCdPlatform.GitHubActions:
          name = 'github-actions-pipeline';
          break;
        case CiCdPlatform.Jenkins:
          name = 'jenkins-pipeline';
          break;
      }
    }

    return name;
  }
}
