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
import '../../classes/pipeline/pipeline.dart' as _i2;
import '../../classes/pipeline/pipeline_configuration.dart' as _i3;

abstract class PipelineStep implements _i1.SerializableModel {
  PipelineStep._({
    _i1.UuidValue? id,
    required this.name,
    required this.pipelineId,
    this.pipeline,
    required this.configurationId,
    this.configuration,
    required this.order,
    this.command,
    this.workingDir,
    DateTime? createdAt,
    this.updatedAt,
  })  : id = id ?? _i1.Uuid().v4obj(),
        createdAt = createdAt ?? DateTime.now();

  factory PipelineStep({
    _i1.UuidValue? id,
    required String name,
    required _i1.UuidValue pipelineId,
    _i2.Pipeline? pipeline,
    required _i1.UuidValue configurationId,
    _i3.PipelineConfiguration? configuration,
    required int order,
    String? command,
    String? workingDir,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PipelineStepImpl;

  factory PipelineStep.fromJson(Map<String, dynamic> jsonSerialization) {
    return PipelineStep(
      id: _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      pipelineId:
          _i1.UuidValueJsonExtension.fromJson(jsonSerialization['pipelineId']),
      pipeline: jsonSerialization['pipeline'] == null
          ? null
          : _i2.Pipeline.fromJson(
              (jsonSerialization['pipeline'] as Map<String, dynamic>)),
      configurationId: _i1.UuidValueJsonExtension.fromJson(
          jsonSerialization['configurationId']),
      configuration: jsonSerialization['configuration'] == null
          ? null
          : _i3.PipelineConfiguration.fromJson(
              (jsonSerialization['configuration'] as Map<String, dynamic>)),
      order: jsonSerialization['order'] as int,
      command: jsonSerialization['command'] as String?,
      workingDir: jsonSerialization['workingDir'] as String?,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _i1.UuidValue id;

  String name;

  _i1.UuidValue pipelineId;

  /// Bi-directional reference to parent (Pipeline)
  _i2.Pipeline? pipeline;

  _i1.UuidValue configurationId;

  _i3.PipelineConfiguration? configuration;

  int order;

  String? command;

  String? workingDir;

  DateTime createdAt;

  DateTime? updatedAt;

  /// Returns a shallow copy of this [PipelineStep]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PipelineStep copyWith({
    _i1.UuidValue? id,
    String? name,
    _i1.UuidValue? pipelineId,
    _i2.Pipeline? pipeline,
    _i1.UuidValue? configurationId,
    _i3.PipelineConfiguration? configuration,
    int? order,
    String? command,
    String? workingDir,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id.toJson(),
      'name': name,
      'pipelineId': pipelineId.toJson(),
      if (pipeline != null) 'pipeline': pipeline?.toJson(),
      'configurationId': configurationId.toJson(),
      if (configuration != null) 'configuration': configuration?.toJson(),
      'order': order,
      if (command != null) 'command': command,
      if (workingDir != null) 'workingDir': workingDir,
      'createdAt': createdAt.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PipelineStepImpl extends PipelineStep {
  _PipelineStepImpl({
    _i1.UuidValue? id,
    required String name,
    required _i1.UuidValue pipelineId,
    _i2.Pipeline? pipeline,
    required _i1.UuidValue configurationId,
    _i3.PipelineConfiguration? configuration,
    required int order,
    String? command,
    String? workingDir,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
          id: id,
          name: name,
          pipelineId: pipelineId,
          pipeline: pipeline,
          configurationId: configurationId,
          configuration: configuration,
          order: order,
          command: command,
          workingDir: workingDir,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [PipelineStep]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PipelineStep copyWith({
    _i1.UuidValue? id,
    String? name,
    _i1.UuidValue? pipelineId,
    Object? pipeline = _Undefined,
    _i1.UuidValue? configurationId,
    Object? configuration = _Undefined,
    int? order,
    Object? command = _Undefined,
    Object? workingDir = _Undefined,
    DateTime? createdAt,
    Object? updatedAt = _Undefined,
  }) {
    return PipelineStep(
      id: id ?? this.id,
      name: name ?? this.name,
      pipelineId: pipelineId ?? this.pipelineId,
      pipeline:
          pipeline is _i2.Pipeline? ? pipeline : this.pipeline?.copyWith(),
      configurationId: configurationId ?? this.configurationId,
      configuration: configuration is _i3.PipelineConfiguration?
          ? configuration
          : this.configuration?.copyWith(),
      order: order ?? this.order,
      command: command is String? ? command : this.command,
      workingDir: workingDir is String? ? workingDir : this.workingDir,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}
