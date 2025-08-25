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
import 'greeting.dart' as _i2;
import 'classes/cicd_workflow_run.dart' as _i3;
import 'enums/cicd_workflow_platform.dart' as _i4;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i5;
export 'greeting.dart';
export 'classes/cicd_workflow_run.dart';
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
    if (t == _i2.Greeting) {
      return _i2.Greeting.fromJson(data) as T;
    }
    if (t == _i3.CICDWorkflowEvent) {
      return _i3.CICDWorkflowEvent.fromJson(data) as T;
    }
    if (t == _i4.CiCdPlatform) {
      return _i4.CiCdPlatform.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Greeting?>()) {
      return (data != null ? _i2.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.CICDWorkflowEvent?>()) {
      return (data != null ? _i3.CICDWorkflowEvent.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.CiCdPlatform?>()) {
      return (data != null ? _i4.CiCdPlatform.fromJson(data) : null) as T;
    }
    try {
      return _i5.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Greeting) {
      return 'Greeting';
    }
    if (data is _i3.CICDWorkflowEvent) {
      return 'CICDWorkflowEvent';
    }
    if (data is _i4.CiCdPlatform) {
      return 'CiCdPlatform';
    }
    className = _i5.Protocol().getClassNameForObject(data);
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
    if (dataClassName == 'Greeting') {
      return deserialize<_i2.Greeting>(data['data']);
    }
    if (dataClassName == 'CICDWorkflowEvent') {
      return deserialize<_i3.CICDWorkflowEvent>(data['data']);
    }
    if (dataClassName == 'CiCdPlatform') {
      return deserialize<_i4.CiCdPlatform>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i5.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }
}
