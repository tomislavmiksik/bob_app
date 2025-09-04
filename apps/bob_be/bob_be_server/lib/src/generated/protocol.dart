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
import 'classes/greeting.dart' as _i5;
import 'classes/pipeline/pipeline.dart' as _i6;
import 'classes/pipeline/pipeline_configuration.dart' as _i7;
import 'classes/pipeline/pipeline_step.dart' as _i8;
import 'classes/pipeline/requests/upload_config_request.dart' as _i9;
import 'classes/pipeline/responses/upload_config_response.dart' as _i10;
import 'enums/cicd_workflow_platform.dart' as _i11;
import 'enums/step_type.dart' as _i12;
export 'exceptions/bad_request_exception.dart';
export 'classes/greeting.dart';
export 'classes/pipeline/pipeline.dart';
export 'classes/pipeline/pipeline_configuration.dart';
export 'classes/pipeline/pipeline_step.dart';
export 'classes/pipeline/requests/upload_config_request.dart';
export 'classes/pipeline/responses/upload_config_response.dart';
export 'enums/cicd_workflow_platform.dart';
export 'enums/step_type.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'pipeline_configurations',
      dartName: 'PipelineConfiguration',
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
          name: 'pipelineId',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _i2.ColumnDefinition(
          name: 'fileName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'fileContent',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'contentHash',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'platform',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:CiCdPlatform',
        ),
        _i2.ColumnDefinition(
          name: 'version',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
          columnDefault: '1',
        ),
        _i2.ColumnDefinition(
          name: 'isActive',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'true',
        ),
        _i2.ColumnDefinition(
          name: 'extractedStepCount',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'uploadedBy',
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
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'pipeline_configurations_fk_0',
          columns: ['pipelineId'],
          referenceTable: 'pipelines',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'pipeline_configurations_pkey',
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
        ),
        _i2.IndexDefinition(
          indexName: 'config_pipeline_version_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'pipelineId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'version',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'config_active_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'pipelineId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'isActive',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'config_hash_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'contentHash',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'pipeline_steps',
      dartName: 'PipelineStep',
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
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'pipelineId',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _i2.ColumnDefinition(
          name: 'configurationId',
          columnType: _i2.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _i2.ColumnDefinition(
          name: 'order',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'command',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'workingDir',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
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
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'pipeline_steps_fk_0',
          columns: ['pipelineId'],
          referenceTable: 'pipelines',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'pipeline_steps_fk_1',
          columns: ['configurationId'],
          referenceTable: 'pipeline_configurations',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'pipeline_steps_pkey',
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
        ),
        _i2.IndexDefinition(
          indexName: 'pipeline_step_order_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'pipelineId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'order',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'pipelines',
      dartName: 'Pipeline',
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
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'repositoryName',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'platform',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:CiCdPlatform',
        ),
        _i2.ColumnDefinition(
          name: 'description',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'isActive',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
          columnDefault: 'true',
        ),
        _i2.ColumnDefinition(
          name: 'configurationHash',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'lastConfigUpdate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
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
          indexName: 'pipelines_pkey',
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
        ),
        _i2.IndexDefinition(
          indexName: 'pipeline_unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'repositoryName',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'name',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'platform',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'pipeline_active_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'isActive',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'repositoryName',
            ),
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
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
    if (t == _i5.Greeting) {
      return _i5.Greeting.fromJson(data) as T;
    }
    if (t == _i6.Pipeline) {
      return _i6.Pipeline.fromJson(data) as T;
    }
    if (t == _i7.PipelineConfiguration) {
      return _i7.PipelineConfiguration.fromJson(data) as T;
    }
    if (t == _i8.PipelineStep) {
      return _i8.PipelineStep.fromJson(data) as T;
    }
    if (t == _i9.UploadConfigRequest) {
      return _i9.UploadConfigRequest.fromJson(data) as T;
    }
    if (t == _i10.UploadConfigResponse) {
      return _i10.UploadConfigResponse.fromJson(data) as T;
    }
    if (t == _i11.CiCdPlatform) {
      return _i11.CiCdPlatform.fromJson(data) as T;
    }
    if (t == _i12.StepType) {
      return _i12.StepType.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.BadRequestException?>()) {
      return (data != null ? _i4.BadRequestException.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i5.Greeting?>()) {
      return (data != null ? _i5.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Pipeline?>()) {
      return (data != null ? _i6.Pipeline.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.PipelineConfiguration?>()) {
      return (data != null ? _i7.PipelineConfiguration.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i8.PipelineStep?>()) {
      return (data != null ? _i8.PipelineStep.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.UploadConfigRequest?>()) {
      return (data != null ? _i9.UploadConfigRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i10.UploadConfigResponse?>()) {
      return (data != null ? _i10.UploadConfigResponse.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i11.CiCdPlatform?>()) {
      return (data != null ? _i11.CiCdPlatform.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.StepType?>()) {
      return (data != null ? _i12.StepType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i8.PipelineStep>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.PipelineStep>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i7.PipelineConfiguration>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i7.PipelineConfiguration>(e))
              .toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i8.PipelineStep>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.PipelineStep>(e)).toList()
          : null) as T;
    }
    if (t == _i1.getType<List<_i8.PipelineStep>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.PipelineStep>(e)).toList()
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
    if (data is _i5.Greeting) {
      return 'Greeting';
    }
    if (data is _i6.Pipeline) {
      return 'Pipeline';
    }
    if (data is _i7.PipelineConfiguration) {
      return 'PipelineConfiguration';
    }
    if (data is _i8.PipelineStep) {
      return 'PipelineStep';
    }
    if (data is _i9.UploadConfigRequest) {
      return 'UploadConfigRequest';
    }
    if (data is _i10.UploadConfigResponse) {
      return 'UploadConfigResponse';
    }
    if (data is _i11.CiCdPlatform) {
      return 'CiCdPlatform';
    }
    if (data is _i12.StepType) {
      return 'StepType';
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
    if (dataClassName == 'Greeting') {
      return deserialize<_i5.Greeting>(data['data']);
    }
    if (dataClassName == 'Pipeline') {
      return deserialize<_i6.Pipeline>(data['data']);
    }
    if (dataClassName == 'PipelineConfiguration') {
      return deserialize<_i7.PipelineConfiguration>(data['data']);
    }
    if (dataClassName == 'PipelineStep') {
      return deserialize<_i8.PipelineStep>(data['data']);
    }
    if (dataClassName == 'UploadConfigRequest') {
      return deserialize<_i9.UploadConfigRequest>(data['data']);
    }
    if (dataClassName == 'UploadConfigResponse') {
      return deserialize<_i10.UploadConfigResponse>(data['data']);
    }
    if (dataClassName == 'CiCdPlatform') {
      return deserialize<_i11.CiCdPlatform>(data['data']);
    }
    if (dataClassName == 'StepType') {
      return deserialize<_i12.StepType>(data['data']);
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
      case _i6.Pipeline:
        return _i6.Pipeline.t;
      case _i7.PipelineConfiguration:
        return _i7.PipelineConfiguration.t;
      case _i8.PipelineStep:
        return _i8.PipelineStep.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'bob_be';
}
