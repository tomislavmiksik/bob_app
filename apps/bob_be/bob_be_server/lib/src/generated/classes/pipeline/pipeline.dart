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
import '../../enums/cicd_workflow_platform.dart' as _i2;
import '../../classes/pipeline/pipeline_step.dart' as _i3;
import '../../classes/pipeline/pipeline_configuration.dart' as _i4;

abstract class Pipeline
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
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

  static final t = PipelineTable();

  static const db = PipelineRepository._();

  @override
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

  @override
  _i1.Table<_i1.UuidValue> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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
      if (steps != null)
        'steps': steps?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (configuration != null)
        'configuration':
            configuration?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static PipelineInclude include({
    _i3.PipelineStepIncludeList? steps,
    _i4.PipelineConfigurationIncludeList? configuration,
  }) {
    return PipelineInclude._(
      steps: steps,
      configuration: configuration,
    );
  }

  static PipelineIncludeList includeList({
    _i1.WhereExpressionBuilder<PipelineTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PipelineTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PipelineTable>? orderByList,
    PipelineInclude? include,
  }) {
    return PipelineIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Pipeline.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Pipeline.t),
      include: include,
    );
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

class PipelineTable extends _i1.Table<_i1.UuidValue> {
  PipelineTable({super.tableRelation}) : super(tableName: 'pipelines') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    repositoryName = _i1.ColumnString(
      'repositoryName',
      this,
    );
    platform = _i1.ColumnEnum(
      'platform',
      this,
      _i1.EnumSerialization.byName,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    isActive = _i1.ColumnBool(
      'isActive',
      this,
      hasDefault: true,
    );
    configurationHash = _i1.ColumnString(
      'configurationHash',
      this,
    );
    lastConfigUpdate = _i1.ColumnDateTime(
      'lastConfigUpdate',
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

  late final _i1.ColumnString repositoryName;

  late final _i1.ColumnEnum<_i2.CiCdPlatform> platform;

  late final _i1.ColumnString description;

  /// Used to determine if pipeline is available or not for use
  late final _i1.ColumnBool isActive;

  late final _i1.ColumnString configurationHash;

  late final _i1.ColumnDateTime lastConfigUpdate;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i3.PipelineStepTable? ___steps;

  _i1.ManyRelation<_i3.PipelineStepTable>? _steps;

  _i4.PipelineConfigurationTable? ___configuration;

  _i1.ManyRelation<_i4.PipelineConfigurationTable>? _configuration;

  _i3.PipelineStepTable get __steps {
    if (___steps != null) return ___steps!;
    ___steps = _i1.createRelationTable(
      relationFieldName: '__steps',
      field: Pipeline.t.id,
      foreignField: _i3.PipelineStep.t.pipelineId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.PipelineStepTable(tableRelation: foreignTableRelation),
    );
    return ___steps!;
  }

  _i4.PipelineConfigurationTable get __configuration {
    if (___configuration != null) return ___configuration!;
    ___configuration = _i1.createRelationTable(
      relationFieldName: '__configuration',
      field: Pipeline.t.id,
      foreignField: _i4.PipelineConfiguration.t.pipelineId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.PipelineConfigurationTable(tableRelation: foreignTableRelation),
    );
    return ___configuration!;
  }

  _i1.ManyRelation<_i3.PipelineStepTable> get steps {
    if (_steps != null) return _steps!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'steps',
      field: Pipeline.t.id,
      foreignField: _i3.PipelineStep.t.pipelineId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.PipelineStepTable(tableRelation: foreignTableRelation),
    );
    _steps = _i1.ManyRelation<_i3.PipelineStepTable>(
      tableWithRelations: relationTable,
      table: _i3.PipelineStepTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _steps!;
  }

  _i1.ManyRelation<_i4.PipelineConfigurationTable> get configuration {
    if (_configuration != null) return _configuration!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'configuration',
      field: Pipeline.t.id,
      foreignField: _i4.PipelineConfiguration.t.pipelineId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.PipelineConfigurationTable(tableRelation: foreignTableRelation),
    );
    _configuration = _i1.ManyRelation<_i4.PipelineConfigurationTable>(
      tableWithRelations: relationTable,
      table: _i4.PipelineConfigurationTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _configuration!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        repositoryName,
        platform,
        description,
        isActive,
        configurationHash,
        lastConfigUpdate,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'steps') {
      return __steps;
    }
    if (relationField == 'configuration') {
      return __configuration;
    }
    return null;
  }
}

class PipelineInclude extends _i1.IncludeObject {
  PipelineInclude._({
    _i3.PipelineStepIncludeList? steps,
    _i4.PipelineConfigurationIncludeList? configuration,
  }) {
    _steps = steps;
    _configuration = configuration;
  }

  _i3.PipelineStepIncludeList? _steps;

  _i4.PipelineConfigurationIncludeList? _configuration;

  @override
  Map<String, _i1.Include?> get includes => {
        'steps': _steps,
        'configuration': _configuration,
      };

  @override
  _i1.Table<_i1.UuidValue> get table => Pipeline.t;
}

class PipelineIncludeList extends _i1.IncludeList {
  PipelineIncludeList._({
    _i1.WhereExpressionBuilder<PipelineTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Pipeline.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Pipeline.t;
}

class PipelineRepository {
  const PipelineRepository._();

  final attach = const PipelineAttachRepository._();

  final attachRow = const PipelineAttachRowRepository._();

  final detach = const PipelineDetachRepository._();

  final detachRow = const PipelineDetachRowRepository._();

  /// Returns a list of [Pipeline]s matching the given query parameters.
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
  Future<List<Pipeline>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PipelineTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PipelineTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PipelineTable>? orderByList,
    _i1.Transaction? transaction,
    PipelineInclude? include,
  }) async {
    return session.db.find<Pipeline>(
      where: where?.call(Pipeline.t),
      orderBy: orderBy?.call(Pipeline.t),
      orderByList: orderByList?.call(Pipeline.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [Pipeline] matching the given query parameters.
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
  Future<Pipeline?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PipelineTable>? where,
    int? offset,
    _i1.OrderByBuilder<PipelineTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PipelineTable>? orderByList,
    _i1.Transaction? transaction,
    PipelineInclude? include,
  }) async {
    return session.db.findFirstRow<Pipeline>(
      where: where?.call(Pipeline.t),
      orderBy: orderBy?.call(Pipeline.t),
      orderByList: orderByList?.call(Pipeline.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [Pipeline] by its [id] or null if no such row exists.
  Future<Pipeline?> findById(
    _i1.Session session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    PipelineInclude? include,
  }) async {
    return session.db.findById<Pipeline>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [Pipeline]s in the list and returns the inserted rows.
  ///
  /// The returned [Pipeline]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Pipeline>> insert(
    _i1.Session session,
    List<Pipeline> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Pipeline>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Pipeline] and returns the inserted row.
  ///
  /// The returned [Pipeline] will have its `id` field set.
  Future<Pipeline> insertRow(
    _i1.Session session,
    Pipeline row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Pipeline>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Pipeline]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Pipeline>> update(
    _i1.Session session,
    List<Pipeline> rows, {
    _i1.ColumnSelections<PipelineTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Pipeline>(
      rows,
      columns: columns?.call(Pipeline.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Pipeline]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Pipeline> updateRow(
    _i1.Session session,
    Pipeline row, {
    _i1.ColumnSelections<PipelineTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Pipeline>(
      row,
      columns: columns?.call(Pipeline.t),
      transaction: transaction,
    );
  }

  /// Deletes all [Pipeline]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Pipeline>> delete(
    _i1.Session session,
    List<Pipeline> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Pipeline>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Pipeline].
  Future<Pipeline> deleteRow(
    _i1.Session session,
    Pipeline row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Pipeline>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Pipeline>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PipelineTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Pipeline>(
      where: where(Pipeline.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PipelineTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Pipeline>(
      where: where?.call(Pipeline.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class PipelineAttachRepository {
  const PipelineAttachRepository._();

  /// Creates a relation between this [Pipeline] and the given [PipelineStep]s
  /// by setting each [PipelineStep]'s foreign key `pipelineId` to refer to this [Pipeline].
  Future<void> steps(
    _i1.Session session,
    Pipeline pipeline,
    List<_i3.PipelineStep> pipelineStep, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineStep.any((e) => e.id == null)) {
      throw ArgumentError.notNull('pipelineStep.id');
    }
    if (pipeline.id == null) {
      throw ArgumentError.notNull('pipeline.id');
    }

    var $pipelineStep =
        pipelineStep.map((e) => e.copyWith(pipelineId: pipeline.id)).toList();
    await session.db.update<_i3.PipelineStep>(
      $pipelineStep,
      columns: [_i3.PipelineStep.t.pipelineId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [Pipeline] and the given [PipelineConfiguration]s
  /// by setting each [PipelineConfiguration]'s foreign key `pipelineId` to refer to this [Pipeline].
  Future<void> configuration(
    _i1.Session session,
    Pipeline pipeline,
    List<_i4.PipelineConfiguration> pipelineConfiguration, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineConfiguration.any((e) => e.id == null)) {
      throw ArgumentError.notNull('pipelineConfiguration.id');
    }
    if (pipeline.id == null) {
      throw ArgumentError.notNull('pipeline.id');
    }

    var $pipelineConfiguration = pipelineConfiguration
        .map((e) => e.copyWith(pipelineId: pipeline.id))
        .toList();
    await session.db.update<_i4.PipelineConfiguration>(
      $pipelineConfiguration,
      columns: [_i4.PipelineConfiguration.t.pipelineId],
      transaction: transaction,
    );
  }
}

class PipelineAttachRowRepository {
  const PipelineAttachRowRepository._();

  /// Creates a relation between this [Pipeline] and the given [PipelineStep]
  /// by setting the [PipelineStep]'s foreign key `pipelineId` to refer to this [Pipeline].
  Future<void> steps(
    _i1.Session session,
    Pipeline pipeline,
    _i3.PipelineStep pipelineStep, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineStep.id == null) {
      throw ArgumentError.notNull('pipelineStep.id');
    }
    if (pipeline.id == null) {
      throw ArgumentError.notNull('pipeline.id');
    }

    var $pipelineStep = pipelineStep.copyWith(pipelineId: pipeline.id);
    await session.db.updateRow<_i3.PipelineStep>(
      $pipelineStep,
      columns: [_i3.PipelineStep.t.pipelineId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [Pipeline] and the given [PipelineConfiguration]
  /// by setting the [PipelineConfiguration]'s foreign key `pipelineId` to refer to this [Pipeline].
  Future<void> configuration(
    _i1.Session session,
    Pipeline pipeline,
    _i4.PipelineConfiguration pipelineConfiguration, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineConfiguration.id == null) {
      throw ArgumentError.notNull('pipelineConfiguration.id');
    }
    if (pipeline.id == null) {
      throw ArgumentError.notNull('pipeline.id');
    }

    var $pipelineConfiguration =
        pipelineConfiguration.copyWith(pipelineId: pipeline.id);
    await session.db.updateRow<_i4.PipelineConfiguration>(
      $pipelineConfiguration,
      columns: [_i4.PipelineConfiguration.t.pipelineId],
      transaction: transaction,
    );
  }
}

class PipelineDetachRepository {
  const PipelineDetachRepository._();

  /// Detaches the relation between this [Pipeline] and the given [PipelineStep]
  /// by setting the [PipelineStep]'s foreign key `pipelineId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> steps(
    _i1.Session session,
    List<_i3.PipelineStep> pipelineStep, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineStep.any((e) => e.id == null)) {
      throw ArgumentError.notNull('pipelineStep.id');
    }

    var $pipelineStep =
        pipelineStep.map((e) => e.copyWith(pipelineId: null)).toList();
    await session.db.update<_i3.PipelineStep>(
      $pipelineStep,
      columns: [_i3.PipelineStep.t.pipelineId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Pipeline] and the given [PipelineConfiguration]
  /// by setting the [PipelineConfiguration]'s foreign key `pipelineId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> configuration(
    _i1.Session session,
    List<_i4.PipelineConfiguration> pipelineConfiguration, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineConfiguration.any((e) => e.id == null)) {
      throw ArgumentError.notNull('pipelineConfiguration.id');
    }

    var $pipelineConfiguration =
        pipelineConfiguration.map((e) => e.copyWith(pipelineId: null)).toList();
    await session.db.update<_i4.PipelineConfiguration>(
      $pipelineConfiguration,
      columns: [_i4.PipelineConfiguration.t.pipelineId],
      transaction: transaction,
    );
  }
}

class PipelineDetachRowRepository {
  const PipelineDetachRowRepository._();

  /// Detaches the relation between this [Pipeline] and the given [PipelineStep]
  /// by setting the [PipelineStep]'s foreign key `pipelineId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> steps(
    _i1.Session session,
    _i3.PipelineStep pipelineStep, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineStep.id == null) {
      throw ArgumentError.notNull('pipelineStep.id');
    }

    var $pipelineStep = pipelineStep.copyWith(pipelineId: null);
    await session.db.updateRow<_i3.PipelineStep>(
      $pipelineStep,
      columns: [_i3.PipelineStep.t.pipelineId],
      transaction: transaction,
    );
  }

  /// Detaches the relation between this [Pipeline] and the given [PipelineConfiguration]
  /// by setting the [PipelineConfiguration]'s foreign key `pipelineId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> configuration(
    _i1.Session session,
    _i4.PipelineConfiguration pipelineConfiguration, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineConfiguration.id == null) {
      throw ArgumentError.notNull('pipelineConfiguration.id');
    }

    var $pipelineConfiguration =
        pipelineConfiguration.copyWith(pipelineId: null);
    await session.db.updateRow<_i4.PipelineConfiguration>(
      $pipelineConfiguration,
      columns: [_i4.PipelineConfiguration.t.pipelineId],
      transaction: transaction,
    );
  }
}
