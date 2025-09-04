/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../../enums/cicd_workflow_platform.dart' as _i2;
import '../../classes/pipeline/pipeline_step.dart' as _i3;
import '../../classes/pipeline/pipeline_configuration.dart' as _i4;

abstract class Pipeline implements _i1.SerializableModel {
  Pipeline._({
    _i1.UuidValue? id,
    required this.name,
    required this.repositoryName,
    required this.platform,
    this.description,
    bool? isActive,
    this.configurationHash,
    this.lastConfigUpdate,
    DateTime? createdAt,
    this.updatedAt,
    this.steps,
    this.configuration,
  })  : id = id ?? _i1.Uuid().v4obj(),
        isActive = isActive ?? true,
        createdAt = createdAt ?? DateTime.now();

  factory Pipeline({
    _i1.UuidValue? id,
    required String name,
    required String repositoryName,
    required _i2.CiCdPlatform platform,
    String? description,
    bool? isActive,
    String? configurationHash,
    DateTime? lastConfigUpdate,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i3.PipelineStep>? steps,
    List<_i4.PipelineConfiguration>? configuration,
  }) = _PipelineImpl;

  factory Pipeline.fromJson(Map<String, dynamic> jsonSerialization) {
    return Pipeline(
      id: _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      repositoryName: jsonSerialization['repositoryName'] as String,
      platform:
          _i2.CiCdPlatform.fromJson((jsonSerialization['platform'] as String)),
      description: jsonSerialization['description'] as String?,
      isActive: jsonSerialization['isActive'] as bool,
      configurationHash: jsonSerialization['configurationHash'] as String?,
      lastConfigUpdate: jsonSerialization['lastConfigUpdate'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['lastConfigUpdate']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      steps: (jsonSerialization['steps'] as List?)
          ?.map((e) => _i3.PipelineStep.fromJson((e as Map<String, dynamic>)))
          .toList(),
      configuration: (jsonSerialization['configuration'] as List?)
          ?.map((e) =>
              _i4.PipelineConfiguration.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue id;

  String name;

  String repositoryName;

  _i2.CiCdPlatform platform;

  String? description;

  /// Used to determine if pipeline is available or not for use
  bool isActive;

  String? configurationHash;

  DateTime? lastConfigUpdate;

  DateTime createdAt;

  DateTime? updatedAt;

  List<_i3.PipelineStep>? steps;

  List<_i4.PipelineConfiguration>? configuration;

  /// Returns a shallow copy of this [Pipeline]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Pipeline copyWith({
    _i1.UuidValue? id,
    String? name,
    String? repositoryName,
    _i2.CiCdPlatform? platform,
    String? description,
    bool? isActive,
    String? configurationHash,
    DateTime? lastConfigUpdate,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i3.PipelineStep>? steps,
    List<_i4.PipelineConfiguration>? configuration,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id.toJson(),
      'name': name,
      'repositoryName': repositoryName,
      'platform': platform.toJson(),
      if (description != null) 'description': description,
      'isActive': isActive,
      if (configurationHash != null) 'configurationHash': configurationHash,
      if (lastConfigUpdate != null)
        'lastConfigUpdate': lastConfigUpdate?.toJson(),
      'createdAt': createdAt.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
      if (steps != null) 'steps': steps?.toJson(valueToJson: (v) => v.toJson()),
      if (configuration != null)
        'configuration': configuration?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PipelineImpl extends Pipeline {
  _PipelineImpl({
    _i1.UuidValue? id,
    required String name,
    required String repositoryName,
    required _i2.CiCdPlatform platform,
    String? description,
    bool? isActive,
    String? configurationHash,
    DateTime? lastConfigUpdate,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<_i3.PipelineStep>? steps,
    List<_i4.PipelineConfiguration>? configuration,
  }) : super._(
          id: id,
          name: name,
          repositoryName: repositoryName,
          platform: platform,
          description: description,
          isActive: isActive,
          configurationHash: configurationHash,
          lastConfigUpdate: lastConfigUpdate,
          createdAt: createdAt,
          updatedAt: updatedAt,
          steps: steps,
          configuration: configuration,
        );

  /// Returns a shallow copy of this [Pipeline]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Pipeline copyWith({
    _i1.UuidValue? id,
    String? name,
    String? repositoryName,
    _i2.CiCdPlatform? platform,
    Object? description = _Undefined,
    bool? isActive,
    Object? configurationHash = _Undefined,
    Object? lastConfigUpdate = _Undefined,
    DateTime? createdAt,
    Object? updatedAt = _Undefined,
    Object? steps = _Undefined,
    Object? configuration = _Undefined,
  }) {
    return Pipeline(
      id: id ?? this.id,
      name: name ?? this.name,
      repositoryName: repositoryName ?? this.repositoryName,
      platform: platform ?? this.platform,
      description: description is String? ? description : this.description,
      isActive: isActive ?? this.isActive,
      configurationHash: configurationHash is String?
          ? configurationHash
          : this.configurationHash,
      lastConfigUpdate: lastConfigUpdate is DateTime?
          ? lastConfigUpdate
          : this.lastConfigUpdate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
      steps: steps is List<_i3.PipelineStep>?
          ? steps
          : this.steps?.map((e0) => e0.copyWith()).toList(),
      configuration: configuration is List<_i4.PipelineConfiguration>?
          ? configuration
          : this.configuration?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
