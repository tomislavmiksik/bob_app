/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../../classes/pipeline/pipeline.dart' as _i2;
import '../../classes/pipeline/pipeline_configuration.dart' as _i3;

abstract class PipelineStep
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
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

  static final t = PipelineStepTable();

  static const db = PipelineStepRepository._();

  @override
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

  @override
  _i1.Table<_i1.UuidValue> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'id': id.toJson(),
      'name': name,
      'pipelineId': pipelineId.toJson(),
      if (pipeline != null) 'pipeline': pipeline?.toJsonForProtocol(),
      'configurationId': configurationId.toJson(),
      if (configuration != null)
        'configuration': configuration?.toJsonForProtocol(),
      'order': order,
      if (command != null) 'command': command,
      if (workingDir != null) 'workingDir': workingDir,
      'createdAt': createdAt.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  static PipelineStepInclude include({
    _i2.PipelineInclude? pipeline,
    _i3.PipelineConfigurationInclude? configuration,
  }) {
    return PipelineStepInclude._(
      pipeline: pipeline,
      configuration: configuration,
    );
  }

  static PipelineStepIncludeList includeList({
    _i1.WhereExpressionBuilder<PipelineStepTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PipelineStepTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PipelineStepTable>? orderByList,
    PipelineStepInclude? include,
  }) {
    return PipelineStepIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PipelineStep.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PipelineStep.t),
      include: include,
    );
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

class PipelineStepTable extends _i1.Table<_i1.UuidValue> {
  PipelineStepTable({super.tableRelation})
      : super(tableName: 'pipeline_steps') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    pipelineId = _i1.ColumnUuid(
      'pipelineId',
      this,
    );
    configurationId = _i1.ColumnUuid(
      'configurationId',
      this,
    );
    order = _i1.ColumnInt(
      'order',
      this,
    );
    command = _i1.ColumnString(
      'command',
      this,
    );
    workingDir = _i1.ColumnString(
      'workingDir',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnUuid pipelineId;

  /// Bi-directional reference to parent (Pipeline)
  _i2.PipelineTable? _pipeline;

  late final _i1.ColumnUuid configurationId;

  _i3.PipelineConfigurationTable? _configuration;

  late final _i1.ColumnInt order;

  late final _i1.ColumnString command;

  late final _i1.ColumnString workingDir;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i2.PipelineTable get pipeline {
    if (_pipeline != null) return _pipeline!;
    _pipeline = _i1.createRelationTable(
      relationFieldName: 'pipeline',
      field: PipelineStep.t.pipelineId,
      foreignField: _i2.Pipeline.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.PipelineTable(tableRelation: foreignTableRelation),
    );
    return _pipeline!;
  }

  _i3.PipelineConfigurationTable get configuration {
    if (_configuration != null) return _configuration!;
    _configuration = _i1.createRelationTable(
      relationFieldName: 'configuration',
      field: PipelineStep.t.configurationId,
      foreignField: _i3.PipelineConfiguration.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.PipelineConfigurationTable(tableRelation: foreignTableRelation),
    );
    return _configuration!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        pipelineId,
        configurationId,
        order,
        command,
        workingDir,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'pipeline') {
      return pipeline;
    }
    if (relationField == 'configuration') {
      return configuration;
    }
    return null;
  }
}

class PipelineStepInclude extends _i1.IncludeObject {
  PipelineStepInclude._({
    _i2.PipelineInclude? pipeline,
    _i3.PipelineConfigurationInclude? configuration,
  }) {
    _pipeline = pipeline;
    _configuration = configuration;
  }

  _i2.PipelineInclude? _pipeline;

  _i3.PipelineConfigurationInclude? _configuration;

  @override
  Map<String, _i1.Include?> get includes => {
        'pipeline': _pipeline,
        'configuration': _configuration,
      };

  @override
  _i1.Table<_i1.UuidValue> get table => PipelineStep.t;
}

class PipelineStepIncludeList extends _i1.IncludeList {
  PipelineStepIncludeList._({
    _i1.WhereExpressionBuilder<PipelineStepTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PipelineStep.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => PipelineStep.t;
}

class PipelineStepRepository {
  const PipelineStepRepository._();

  final attachRow = const PipelineStepAttachRowRepository._();

  /// Returns a list of [PipelineStep]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<PipelineStep>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PipelineStepTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PipelineStepTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PipelineStepTable>? orderByList,
    _i1.Transaction? transaction,
    PipelineStepInclude? include,
  }) async {
    return session.db.find<PipelineStep>(
      where: where?.call(PipelineStep.t),
      orderBy: orderBy?.call(PipelineStep.t),
      orderByList: orderByList?.call(PipelineStep.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [PipelineStep] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<PipelineStep?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PipelineStepTable>? where,
    int? offset,
    _i1.OrderByBuilder<PipelineStepTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PipelineStepTable>? orderByList,
    _i1.Transaction? transaction,
    PipelineStepInclude? include,
  }) async {
    return session.db.findFirstRow<PipelineStep>(
      where: where?.call(PipelineStep.t),
      orderBy: orderBy?.call(PipelineStep.t),
      orderByList: orderByList?.call(PipelineStep.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [PipelineStep] by its [id] or null if no such row exists.
  Future<PipelineStep?> findById(
    _i1.Session session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    PipelineStepInclude? include,
  }) async {
    return session.db.findById<PipelineStep>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [PipelineStep]s in the list and returns the inserted rows.
  ///
  /// The returned [PipelineStep]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PipelineStep>> insert(
    _i1.Session session,
    List<PipelineStep> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PipelineStep>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PipelineStep] and returns the inserted row.
  ///
  /// The returned [PipelineStep] will have its `id` field set.
  Future<PipelineStep> insertRow(
    _i1.Session session,
    PipelineStep row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PipelineStep>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PipelineStep]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PipelineStep>> update(
    _i1.Session session,
    List<PipelineStep> rows, {
    _i1.ColumnSelections<PipelineStepTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PipelineStep>(
      rows,
      columns: columns?.call(PipelineStep.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PipelineStep]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PipelineStep> updateRow(
    _i1.Session session,
    PipelineStep row, {
    _i1.ColumnSelections<PipelineStepTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PipelineStep>(
      row,
      columns: columns?.call(PipelineStep.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PipelineStep]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PipelineStep>> delete(
    _i1.Session session,
    List<PipelineStep> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PipelineStep>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PipelineStep].
  Future<PipelineStep> deleteRow(
    _i1.Session session,
    PipelineStep row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PipelineStep>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PipelineStep>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PipelineStepTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PipelineStep>(
      where: where(PipelineStep.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PipelineStepTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PipelineStep>(
      where: where?.call(PipelineStep.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class PipelineStepAttachRowRepository {
  const PipelineStepAttachRowRepository._();

  /// Creates a relation between the given [PipelineStep] and [Pipeline]
  /// by setting the [PipelineStep]'s foreign key `pipelineId` to refer to the [Pipeline].
  Future<void> pipeline(
    _i1.Session session,
    PipelineStep pipelineStep,
    _i2.Pipeline pipeline, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineStep.id == null) {
      throw ArgumentError.notNull('pipelineStep.id');
    }
    if (pipeline.id == null) {
      throw ArgumentError.notNull('pipeline.id');
    }

    var $pipelineStep = pipelineStep.copyWith(pipelineId: pipeline.id);
    await session.db.updateRow<PipelineStep>(
      $pipelineStep,
      columns: [PipelineStep.t.pipelineId],
      transaction: transaction,
    );
  }

  /// Creates a relation between the given [PipelineStep] and [PipelineConfiguration]
  /// by setting the [PipelineStep]'s foreign key `configurationId` to refer to the [PipelineConfiguration].
  Future<void> configuration(
    _i1.Session session,
    PipelineStep pipelineStep,
    _i3.PipelineConfiguration configuration, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineStep.id == null) {
      throw ArgumentError.notNull('pipelineStep.id');
    }
    if (configuration.id == null) {
      throw ArgumentError.notNull('configuration.id');
    }

    var $pipelineStep =
        pipelineStep.copyWith(configurationId: configuration.id);
    await session.db.updateRow<PipelineStep>(
      $pipelineStep,
      columns: [PipelineStep.t.configurationId],
      transaction: transaction,
    );
  }
}
