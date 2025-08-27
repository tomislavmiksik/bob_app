/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'exceptions/bad_request_exception.dart' as _i4;
import 'classes/cicd/cicd_workflow_event.dart' as _i5;
import 'classes/cicd/cicd_workflow_event_detail.dart' as _i6;
import 'classes/cicd/cicd_workflow_event_request.dart' as _i7;
import 'classes/cicd/cicd_workflow_event_summary.dart' as _i8;
import 'classes/greeting.dart' as _i9;
import 'enums/cicd_workflow_platform.dart' as _i10;
import 'package:bob_be_server/src/generated/classes/cicd/cicd_workflow_event_summary.dart'
    as _i11;
export 'exceptions/bad_request_exception.dart';
export 'classes/cicd/cicd_workflow_event.dart';
export 'classes/cicd/cicd_workflow_event_detail.dart';
export 'classes/cicd/cicd_workflow_event_request.dart';
export 'classes/cicd/cicd_workflow_event_summary.dart';
export 'classes/greeting.dart';
export 'enums/cicd_workflow_platform.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'cicd_workflow_events',
      dartName: 'CICDWorkflowEvent',
      schema: 'public',
      module: 'bob_be',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
          columnDefault: 'gen_random_uuid()',
        ),
        _i2.ColumnDefinition(
          name: 'workflowName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'buildId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'branch',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'commitSha',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'startTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'endTime',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'duration',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'triggerType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'environment',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'platform',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:CiCdPlatform?',
        ),
        _i2.ColumnDefinition(
          name: 'repositoryName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'authorName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'authorEmail',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'pullRequestNumber',
          columnType: _i2.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'cicd_workflow_events_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i4.BadRequestException) {
      return _i4.BadRequestException.fromJson(data) as T;
    }
    if (t == _i5.CICDWorkflowEvent) {
      return _i5.CICDWorkflowEvent.fromJson(data) as T;
    }
    if (t == _i6.CICDWorkflowEventDetail) {
      return _i6.CICDWorkflowEventDetail.fromJson(data) as T;
    }
    if (t == _i7.CICDWorkflowEventRequest) {
      return _i7.CICDWorkflowEventRequest.fromJson(data) as T;
    }
    if (t == _i8.CICDWorkflowEventSummary) {
      return _i8.CICDWorkflowEventSummary.fromJson(data) as T;
    }
    if (t == _i9.Greeting) {
      return _i9.Greeting.fromJson(data) as T;
    }
    if (t == _i10.CiCdPlatform) {
      return _i10.CiCdPlatform.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.BadRequestException?>()) {
      return (data != null ? _i4.BadRequestException.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i5.CICDWorkflowEvent?>()) {
      return (data != null ? _i5.CICDWorkflowEvent.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.CICDWorkflowEventDetail?>()) {
      return (data != null ? _i6.CICDWorkflowEventDetail.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i7.CICDWorkflowEventRequest?>()) {
      return (data != null ? _i7.CICDWorkflowEventRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i8.CICDWorkflowEventSummary?>()) {
      return (data != null ? _i8.CICDWorkflowEventSummary.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i9.Greeting?>()) {
      return (data != null ? _i9.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.CiCdPlatform?>()) {
      return (data != null ? _i10.CiCdPlatform.fromJson(data) : null) as T;
    }
    if (t == List<_i11.CICDWorkflowEventSummary>) {
      return (data as List)
          .map((e) => deserialize<_i11.CICDWorkflowEventSummary>(e))
          .toList() as T;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i4.BadRequestException) {
      return 'BadRequestException';
    }
    if (data is _i5.CICDWorkflowEvent) {
      return 'CICDWorkflowEvent';
    }
    if (data is _i6.CICDWorkflowEventDetail) {
      return 'CICDWorkflowEventDetail';
    }
    if (data is _i7.CICDWorkflowEventRequest) {
      return 'CICDWorkflowEventRequest';
    }
    if (data is _i8.CICDWorkflowEventSummary) {
      return 'CICDWorkflowEventSummary';
    }
    if (data is _i9.Greeting) {
      return 'Greeting';
    }
    if (data is _i10.CiCdPlatform) {
      return 'CiCdPlatform';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    className = _i3.Protocol().getClassNameForObject(data);
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
      return deserialize<_i4.BadRequestException>(data['data']);
    }
    if (dataClassName == 'CICDWorkflowEvent') {
      return deserialize<_i5.CICDWorkflowEvent>(data['data']);
    }
    if (dataClassName == 'CICDWorkflowEventDetail') {
      return deserialize<_i6.CICDWorkflowEventDetail>(data['data']);
    }
    if (dataClassName == 'CICDWorkflowEventRequest') {
      return deserialize<_i7.CICDWorkflowEventRequest>(data['data']);
    }
    if (dataClassName == 'CICDWorkflowEventSummary') {
      return deserialize<_i8.CICDWorkflowEventSummary>(data['data']);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i9.Greeting>(data['data']);
    }
    if (dataClassName == 'CiCdPlatform') {
      return deserialize<_i10.CiCdPlatform>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i5.CICDWorkflowEvent:
        return _i5.CICDWorkflowEvent.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'bob_be';
}
