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
import 'exceptions/bad_request_exception.dart' as _i2;
import 'classes/greeting.dart' as _i3;
import 'classes/pipeline/pipeline.dart' as _i4;
import 'classes/pipeline/pipeline_configuration.dart' as _i5;
import 'classes/pipeline/pipeline_step.dart' as _i6;
import 'classes/pipeline/requests/upload_config_request.dart' as _i7;
import 'classes/pipeline/responses/upload_config_response.dart' as _i8;
import 'enums/cicd_workflow_platform.dart' as _i9;
import 'enums/step_type.dart' as _i10;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i11;
export 'exceptions/bad_request_exception.dart';
export 'classes/greeting.dart';
export 'classes/pipeline/pipeline.dart';
export 'classes/pipeline/pipeline_configuration.dart';
export 'classes/pipeline/pipeline_step.dart';
export 'classes/pipeline/requests/upload_config_request.dart';
export 'classes/pipeline/responses/upload_config_response.dart';
export 'enums/cicd_workflow_platform.dart';
export 'enums/step_type.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.BadRequestException) {
      return _i2.BadRequestException.fromJson(data) as T;
    }
    if (t == _i3.Greeting) {
      return _i3.Greeting.fromJson(data) as T;
    }
    if (t == _i4.Pipeline) {
      return _i4.Pipeline.fromJson(data) as T;
    }
    if (t == _i5.PipelineConfiguration) {
      return _i5.PipelineConfiguration.fromJson(data) as T;
    }
    if (t == _i6.PipelineStep) {
      return _i6.PipelineStep.fromJson(data) as T;
    }
    if (t == _i7.UploadConfigRequest) {
      return _i7.UploadConfigRequest.fromJson(data) as T;
    }
    if (t == _i8.UploadConfigResponse) {
      return _i8.UploadConfigResponse.fromJson(data) as T;
    }
    if (t == _i9.CiCdPlatform) {
      return _i9.CiCdPlatform.fromJson(data) as T;
    }
    if (t == _i10.StepType) {
      return _i10.StepType.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.BadRequestException?>()) {
      return (data != null ? _i2.BadRequestException.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i3.Greeting?>()) {
      return (data != null ? _i3.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Pipeline?>()) {
      return (data != null ? _i4.Pipeline.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.PipelineConfiguration?>()) {
      return (data != null ? _i5.PipelineConfiguration.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i6.PipelineStep?>()) {
      return (data != null ? _i6.PipelineStep.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.UploadConfigRequest?>()) {
      return (data != null ? _i7.UploadConfigRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i8.UploadConfigResponse?>()) {
      return (data != null ? _i8.UploadConfigResponse.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i9.CiCdPlatform?>()) {
      return (data != null ? _i9.CiCdPlatform.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.StepType?>()) {
      return (data != null ? _i10.StepType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i6.PipelineStep>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i6.PipelineStep>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i5.PipelineConfiguration>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i5.PipelineConfiguration>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i6.PipelineStep>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i6.PipelineStep>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i6.PipelineStep>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i6.PipelineStep>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as T;
    }
    try {
      return _i11.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.BadRequestException) {
      return 'BadRequestException';
    }
    if (data is _i3.Greeting) {
      return 'Greeting';
    }
    if (data is _i4.Pipeline) {
      return 'Pipeline';
    }
    if (data is _i5.PipelineConfiguration) {
      return 'PipelineConfiguration';
    }
    if (data is _i6.PipelineStep) {
      return 'PipelineStep';
    }
    if (data is _i7.UploadConfigRequest) {
      return 'UploadConfigRequest';
    }
    if (data is _i8.UploadConfigResponse) {
      return 'UploadConfigResponse';
    }
    if (data is _i9.CiCdPlatform) {
      return 'CiCdPlatform';
    }
    if (data is _i10.StepType) {
      return 'StepType';
    }
    className = _i11.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'BadRequestException') {
      return deserialize<_i2.BadRequestException>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i3.Greeting>(data['data']);
    }
    if (dataClassName == 'Pipeline') {
      return deserialize<_i4.Pipeline>(data['data']);
    }
    if (dataClassName == 'PipelineConfiguration') {
      return deserialize<_i5.PipelineConfiguration>(data['data']);
    }
    if (dataClassName == 'PipelineStep') {
      return deserialize<_i6.PipelineStep>(data['data']);
    }
    if (dataClassName == 'UploadConfigRequest') {
      return deserialize<_i7.UploadConfigRequest>(data['data']);
    }
    if (dataClassName == 'UploadConfigResponse') {
      return deserialize<_i8.UploadConfigResponse>(data['data']);
    }
    if (dataClassName == 'CiCdPlatform') {
      return deserialize<_i9.CiCdPlatform>(data['data']);
    }
    if (dataClassName == 'StepType') {
      return deserialize<_i10.StepType>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i11.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
