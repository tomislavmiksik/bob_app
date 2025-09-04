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
import '../../enums/cicd_workflow_platform.dart' as _i3;
import '../../classes/pipeline/pipeline_step.dart' as _i4;

abstract class PipelineConfiguration implements _i1.SerializableModel {
  PipelineConfiguration._({
    _i1.UuidValue? id,
    required this.pipelineId,
    this.pipeline,
    required this.fileName,
    required this.fileContent,
    required this.contentHash,
    required this.platform,
    int? version,
    bool? isActive,
    required this.extractedStepCount,
    this.uploadedBy,
    this.steps,
    DateTime? createdAt,
    this.updatedAt,
  })  : id = id ?? _i1.Uuid().v4obj(),
        version = version ?? 1,
        isActive = isActive ?? true,
        createdAt = createdAt ?? DateTime.now();

  factory PipelineConfiguration({
    _i1.UuidValue? id,
    required _i1.UuidValue pipelineId,
    _i2.Pipeline? pipeline,
    required String fileName,
    required String fileContent,
    required String contentHash,
    required _i3.CiCdPlatform platform,
    int? version,
    bool? isActive,
    required int extractedStepCount,
    int? uploadedBy,
    List<_i4.PipelineStep>? steps,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PipelineConfigurationImpl;

  factory PipelineConfiguration.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return PipelineConfiguration(
      id: _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      pipelineId:
          _i1.UuidValueJsonExtension.fromJson(jsonSerialization['pipelineId']),
      pipeline: jsonSerialization['pipeline'] == null
          ? null
          : _i2.Pipeline.fromJson(
              (jsonSerialization['pipeline'] as Map<String, dynamic>)),
      fileName: jsonSerialization['fileName'] as String,
      fileContent: jsonSerialization['fileContent'] as String,
      contentHash: jsonSerialization['contentHash'] as String,
      platform:
          _i3.CiCdPlatform.fromJson((jsonSerialization['platform'] as String)),
      version: jsonSerialization['version'] as int,
      isActive: jsonSerialization['isActive'] as bool,
      extractedStepCount: jsonSerialization['extractedStepCount'] as int,
      uploadedBy: jsonSerialization['uploadedBy'] as int?,
      steps: (jsonSerialization['steps'] as List?)
          ?.map((e) => _i4.PipelineStep.fromJson((e as Map<String, dynamic>)))
          .toList(),
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

  _i1.UuidValue pipelineId;

  _i2.Pipeline? pipeline;

  String fileName;

  String fileContent;

  String contentHash;

  _i3.CiCdPlatform platform;

  int version;

  bool isActive;

  int extractedStepCount;

  int? uploadedBy;

  List<_i4.PipelineStep>? steps;

  DateTime createdAt;

  DateTime? updatedAt;

  /// Returns a shallow copy of this [PipelineConfiguration]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PipelineConfiguration copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? pipelineId,
    _i2.Pipeline? pipeline,
    String? fileName,
    String? fileContent,
    String? contentHash,
    _i3.CiCdPlatform? platform,
    int? version,
    bool? isActive,
    int? extractedStepCount,
    int? uploadedBy,
    List<_i4.PipelineStep>? steps,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id.toJson(),
      'pipelineId': pipelineId.toJson(),
      if (pipeline != null) 'pipeline': pipeline?.toJson(),
      'fileName': fileName,
      'fileContent': fileContent,
      'contentHash': contentHash,
      'platform': platform.toJson(),
      'version': version,
      'isActive': isActive,
      'extractedStepCount': extractedStepCount,
      if (uploadedBy != null) 'uploadedBy': uploadedBy,
      if (steps != null) 'steps': steps?.toJson(valueToJson: (v) => v.toJson()),
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

class _PipelineConfigurationImpl extends PipelineConfiguration {
  _PipelineConfigurationImpl({
    _i1.UuidValue? id,
    required _i1.UuidValue pipelineId,
    _i2.Pipeline? pipeline,
    required String fileName,
    required String fileContent,
    required String contentHash,
    required _i3.CiCdPlatform platform,
    int? version,
    bool? isActive,
    required int extractedStepCount,
    int? uploadedBy,
    List<_i4.PipelineStep>? steps,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
          id: id,
          pipelineId: pipelineId,
          pipeline: pipeline,
          fileName: fileName,
          fileContent: fileContent,
          contentHash: contentHash,
          platform: platform,
          version: version,
          isActive: isActive,
          extractedStepCount: extractedStepCount,
          uploadedBy: uploadedBy,
          steps: steps,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [PipelineConfiguration]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PipelineConfiguration copyWith({
    _i1.UuidValue? id,
    _i1.UuidValue? pipelineId,
    Object? pipeline = _Undefined,
    String? fileName,
    String? fileContent,
    String? contentHash,
    _i3.CiCdPlatform? platform,
    int? version,
    bool? isActive,
    int? extractedStepCount,
    Object? uploadedBy = _Undefined,
    Object? steps = _Undefined,
    DateTime? createdAt,
    Object? updatedAt = _Undefined,
  }) {
    return PipelineConfiguration(
      id: id ?? this.id,
      pipelineId: pipelineId ?? this.pipelineId,
      pipeline:
          pipeline is _i2.Pipeline? ? pipeline : this.pipeline?.copyWith(),
      fileName: fileName ?? this.fileName,
      fileContent: fileContent ?? this.fileContent,
      contentHash: contentHash ?? this.contentHash,
      platform: platform ?? this.platform,
      version: version ?? this.version,
      isActive: isActive ?? this.isActive,
      extractedStepCount: extractedStepCount ?? this.extractedStepCount,
      uploadedBy: uploadedBy is int? ? uploadedBy : this.uploadedBy,
      steps: steps is List<_i4.PipelineStep>?
          ? steps
          : this.steps?.map((e0) => e0.copyWith()).toList(),
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}
