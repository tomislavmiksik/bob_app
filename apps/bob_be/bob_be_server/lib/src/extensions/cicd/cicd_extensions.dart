part of bob_app_extensions;

extension CICDWorkflowEventRequestExtension on CICDWorkflowEventRequest {
  CICDWorkflowEvent toEntity() {
    return CICDWorkflowEvent(
      workflowName: workflowName,
      buildId: buildId,
      branch: branch,
      commitSha: commitSha,
      status: status,
      startTime: startTime,
      triggerType: triggerType,
      environment: environment,
      platform: platform,
      repositoryName: repositoryName,
      authorName: authorName,
      authorEmail: authorEmail,
      pullRequestNumber: pullRequestNumber,
      createdAt: DateTime.now(),
    );
  }

  CICDWorkflowEvent toEntityWithTimestamp(DateTime timestamp) {
    return CICDWorkflowEvent(
      workflowName: workflowName,
      buildId: buildId,
      branch: branch,
      commitSha: commitSha,
      status: status,
      startTime: startTime,
      triggerType: triggerType,
      environment: environment,
      platform: platform,
      repositoryName: repositoryName,
      authorName: authorName,
      authorEmail: authorEmail,
      pullRequestNumber: pullRequestNumber,
      createdAt: timestamp,
    );
  }

  List<String> validate() {
    final errors = <String>[];

    if (workflowName.trim().isEmpty) {
      errors.add('Workflow name cannot be empty');
    }

    if (buildId.trim().isEmpty) {
      errors.add('Build ID cannot be empty');
    }

    if (branch.trim().isEmpty) {
      errors.add('Branch cannot be empty');
    }

    if (commitSha.trim().isEmpty) {
      errors.add('Commit SHA cannot be empty');
    }

    if (!['success', 'failure', 'cancelled', 'running'].contains(status)) {
      errors.add('Status must be one of: success, failure, cancelled, running');
    }

    if (!['push', 'pull_request', 'manual', 'schedule'].contains(triggerType)) {
      errors.add(
          'Trigger type must be one of: push, pull_request, manual, schedule');
    }

    if (startTime.isAfter(DateTime.now())) {
      errors.add('Start time cannot be in the future');
    }

    return errors;
  }
}

extension CICDWorkflowEventExtension on CICDWorkflowEvent {
  CICDWorkflowEventSummary toSummary() {
    return CICDWorkflowEventSummary(
      id: id,
      workflowName: workflowName,
      buildId: buildId,
      status: status,
      duration: duration,
      createdAt: createdAt,
    );
  }

  CICDWorkflowEventDetail toDetail() {
    return CICDWorkflowEventDetail(
      id: id,
      workflowName: workflowName,
      buildId: buildId,
      branch: branch,
      commitSha: commitSha,
      status: status,
      startTime: startTime,
      endTime: endTime,
      duration: duration,
      triggerType: triggerType,
      environment: environment,
      platform: platform,
      repositoryName: repositoryName,
      authorName: authorName,
      authorEmail: authorEmail,
      pullRequestNumber: pullRequestNumber,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  /// Check if the workflow is still running
  bool get isRunning => status == 'running';

  /// Check if the workflow completed successfully
  bool get isSuccess => status == 'success';

  /// Check if the workflow failed
  bool get isFailed => status == 'failure';

  /// Get formatted duration string
  String get formattedDuration {
    if (duration == null) return 'Unknown';

    final minutes = duration! ~/ 60;
    final seconds = duration! % 60;

    if (minutes > 0) {
      return '${minutes}m ${seconds}s';
    }
    return '${seconds}s';
  }

  /// Update workflow to completed state
  CICDWorkflowEvent markCompleted({
    required String finalStatus,
    DateTime? completionTime,
  }) {
    final endTime = completionTime ?? DateTime.now();
    final calculatedDuration = endTime.difference(startTime).inSeconds;

    return copyWith(
      status: finalStatus,
      endTime: endTime,
      duration: calculatedDuration,
      updatedAt: DateTime.now(),
    );
  }
}

/// Extension for batch operations on workflow events
extension CICDWorkflowEventListExtension on List<CICDWorkflowEvent> {
  /// Convert list to summary responses
  List<CICDWorkflowEventSummary> toSummaries() {
    return map((event) => event.toSummary()).toList();
  }

  /// Convert list to detailed responses
  List<CICDWorkflowEventDetail> toDetails() {
    return map((event) => event.toDetail()).toList();
  }

  /// Filter by status
  List<CICDWorkflowEvent> whereStatus(String status) {
    return where((event) => event.status == status).toList();
  }

  /// Get running workflows
  List<CICDWorkflowEvent> get running => whereStatus('running');

  /// Get successful workflows
  List<CICDWorkflowEvent> get successful => whereStatus('success');

  /// Get failed workflows
  List<CICDWorkflowEvent> get failed => whereStatus('failure');

  /// Calculate success rate
  double get successRate {
    if (isEmpty) return 0.0;
    final completed = where((e) => e.status != 'running').length;
    if (completed == 0) return 0.0;
    final successful = where((e) => e.status == 'success').length;
    return (successful / completed) * 100;
  }

  /// Get average duration for completed workflows
  double? get averageDuration {
    final completedWithDuration = where((e) => e.duration != null).toList();
    if (completedWithDuration.isEmpty) return null;

    final totalDuration = completedWithDuration.fold<int>(
        0, (sum, event) => sum + event.duration!);

    return totalDuration / completedWithDuration.length;
  }
}
