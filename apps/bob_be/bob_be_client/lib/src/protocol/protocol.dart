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
import 'classes/cicd/cicd_workflow_event.dart' as _i3;
import 'classes/cicd/cicd_workflow_event_detail.dart' as _i4;
import 'classes/cicd/cicd_workflow_event_request.dart' as _i5;
import 'classes/cicd/cicd_workflow_event_summary.dart' as _i6;
import 'classes/greeting.dart' as _i7;
import 'enums/cicd_workflow_platform.dart' as _i8;
import 'package:bob_be_client/src/protocol/classes/cicd/cicd_workflow_event_summary.dart'
    as _i9;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i10;
export 'exceptions/bad_request_exception.dart';
export 'classes/cicd/cicd_workflow_event.dart';
export 'classes/cicd/cicd_workflow_event_detail.dart';
export 'classes/cicd/cicd_workflow_event_request.dart';
export 'classes/cicd/cicd_workflow_event_summary.dart';
export 'classes/greeting.dart';
export 'enums/cicd_workflow_platform.dart';
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
    if (t == _i3.CICDWorkflowEvent) {
      return _i3.CICDWorkflowEvent.fromJson(data) as T;
    }
    if (t == _i4.CICDWorkflowEventDetail) {
      return _i4.CICDWorkflowEventDetail.fromJson(data) as T;
    }
    if (t == _i5.CICDWorkflowEventRequest) {
      return _i5.CICDWorkflowEventRequest.fromJson(data) as T;
    }
    if (t == _i6.CICDWorkflowEventSummary) {
      return _i6.CICDWorkflowEventSummary.fromJson(data) as T;
    }
    if (t == _i7.Greeting) {
      return _i7.Greeting.fromJson(data) as T;
    }
    if (t == _i8.CiCdPlatform) {
      return _i8.CiCdPlatform.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.BadRequestException?>()) {
      return (data != null ? _i2.BadRequestException.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i3.CICDWorkflowEvent?>()) {
      return (data != null ? _i3.CICDWorkflowEvent.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.CICDWorkflowEventDetail?>()) {
      return (data != null ? _i4.CICDWorkflowEventDetail.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i5.CICDWorkflowEventRequest?>()) {
      return (data != null ? _i5.CICDWorkflowEventRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i6.CICDWorkflowEventSummary?>()) {
      return (data != null ? _i6.CICDWorkflowEventSummary.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i7.Greeting?>()) {
      return (data != null ? _i7.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.CiCdPlatform?>()) {
      return (data != null ? _i8.CiCdPlatform.fromJson(data) : null) as T;
    }
    if (t == List<_i9.CICDWorkflowEventSummary>) {
      return (data as List)
          .map((e) => deserialize<_i9.CICDWorkflowEventSummary>(e))
          .toList() as T;
    }
    try {
      return _i10.Protocol().deserialize<T>(data, t);
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
    if (data is _i3.CICDWorkflowEvent) {
      return 'CICDWorkflowEvent';
    }
    if (data is _i4.CICDWorkflowEventDetail) {
      return 'CICDWorkflowEventDetail';
    }
    if (data is _i5.CICDWorkflowEventRequest) {
      return 'CICDWorkflowEventRequest';
    }
    if (data is _i6.CICDWorkflowEventSummary) {
      return 'CICDWorkflowEventSummary';
    }
    if (data is _i7.Greeting) {
      return 'Greeting';
    }
    if (data is _i8.CiCdPlatform) {
      return 'CiCdPlatform';
    }
    className = _i10.Protocol().getClassNameForObject(data);
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
    if (dataClassName == 'CICDWorkflowEvent') {
      return deserialize<_i3.CICDWorkflowEvent>(data['data']);
    }
    if (dataClassName == 'CICDWorkflowEventDetail') {
      return deserialize<_i4.CICDWorkflowEventDetail>(data['data']);
    }
    if (dataClassName == 'CICDWorkflowEventRequest') {
      return deserialize<_i5.CICDWorkflowEventRequest>(data['data']);
    }
    if (dataClassName == 'CICDWorkflowEventSummary') {
      return deserialize<_i6.CICDWorkflowEventSummary>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i7.Greeting>(data['data']);
    }
    if (dataClassName == 'CiCdPlatform') {
      return deserialize<_i8.CiCdPlatform>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i10.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
