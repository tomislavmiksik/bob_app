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
import '../../../classes/pipeline/pipeline.dart' as _i2;
import '../../../classes/pipeline/pipeline_step.dart' as _i3;
import '../../../classes/pipeline/pipeline_configuration.dart' as _i4;

abstract class UploadConfigResponse implements _i1.SerializableModel {
  UploadConfigResponse._({
    required this.success,
    required this.message,
    this.pipeline,
    this.steps,
    this.configuration,
    this.extractedStepCount,
    this.warnings,
    this.errors,
  });

  factory UploadConfigResponse({
    required bool success,
    required String message,
    _i2.Pipeline? pipeline,
    List<_i3.PipelineStep>? steps,
    _i4.PipelineConfiguration? configuration,
    int? extractedStepCount,
    List<String>? warnings,
    List<String>? errors,
  }) = _UploadConfigResponseImpl;

  factory UploadConfigResponse.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return UploadConfigResponse(
      success: jsonSerialization['success'] as bool,
      message: jsonSerialization['message'] as String,
      pipeline: jsonSerialization['pipeline'] == null
          ? null
          : _i2.Pipeline.fromJson(
              (jsonSerialization['pipeline'] as Map<String, dynamic>)),
      steps: (jsonSerialization['steps'] as List?)
          ?.map((e) => _i3.PipelineStep.fromJson((e as Map<String, dynamic>)))
          .toList(),
      configuration: jsonSerialization['configuration'] == null
          ? null
          : _i4.PipelineConfiguration.fromJson(
              (jsonSerialization['configuration'] as Map<String, dynamic>)),
      extractedStepCount: jsonSerialization['extractedStepCount'] as int?,
      warnings: (jsonSerialization['warnings'] as List?)
          ?.map((e) => e as String)
          .toList(),
      errors: (jsonSerialization['errors'] as List?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  bool success;

  String message;

  _i2.Pipeline? pipeline;

  List<_i3.PipelineStep>? steps;

  _i4.PipelineConfiguration? configuration;

  int? extractedStepCount;

  List<String>? warnings;

  List<String>? errors;

  /// Returns a shallow copy of this [UploadConfigResponse]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UploadConfigResponse copyWith({
    bool? success,
    String? message,
    _i2.Pipeline? pipeline,
    List<_i3.PipelineStep>? steps,
    _i4.PipelineConfiguration? configuration,
    int? extractedStepCount,
    List<String>? warnings,
    List<String>? errors,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      if (pipeline != null) 'pipeline': pipeline?.toJson(),
      if (steps != null) 'steps': steps?.toJson(valueToJson: (v) => v.toJson()),
      if (configuration != null) 'configuration': configuration?.toJson(),
      if (extractedStepCount != null) 'extractedStepCount': extractedStepCount,
      if (warnings != null) 'warnings': warnings?.toJson(),
      if (errors != null) 'errors': errors?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UploadConfigResponseImpl extends UploadConfigResponse {
  _UploadConfigResponseImpl({
    required bool success,
    required String message,
    _i2.Pipeline? pipeline,
    List<_i3.PipelineStep>? steps,
    _i4.PipelineConfiguration? configuration,
    int? extractedStepCount,
    List<String>? warnings,
    List<String>? errors,
  }) : super._(
          success: success,
          message: message,
          pipeline: pipeline,
          steps: steps,
          configuration: configuration,
          extractedStepCount: extractedStepCount,
          warnings: warnings,
          errors: errors,
        );

  /// Returns a shallow copy of this [UploadConfigResponse]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UploadConfigResponse copyWith({
    bool? success,
    String? message,
    Object? pipeline = _Undefined,
    Object? steps = _Undefined,
    Object? configuration = _Undefined,
    Object? extractedStepCount = _Undefined,
    Object? warnings = _Undefined,
    Object? errors = _Undefined,
  }) {
    return UploadConfigResponse(
      success: success ?? this.success,
      message: message ?? this.message,
      pipeline:
          pipeline is _i2.Pipeline? ? pipeline : this.pipeline?.copyWith(),
      steps: steps is List<_i3.PipelineStep>?
          ? steps
          : this.steps?.map((e0) => e0.copyWith()).toList(),
      configuration: configuration is _i4.PipelineConfiguration?
          ? configuration
          : this.configuration?.copyWith(),
      extractedStepCount: extractedStepCount is int?
          ? extractedStepCount
          : this.extractedStepCount,
      warnings: warnings is List<String>?
          ? warnings
          : this.warnings?.map((e0) => e0).toList(),
      errors: errors is List<String>?
          ? errors
          : this.errors?.map((e0) => e0).toList(),
    );
  }
}
