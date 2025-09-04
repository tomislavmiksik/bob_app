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
import '../../enums/cicd_workflow_platform.dart' as _i3;
import '../../classes/pipeline/pipeline_step.dart' as _i4;

abstract class PipelineConfiguration
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
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

  static final t = PipelineConfigurationTable();

  static const db = PipelineConfigurationRepository._();

  @override
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

  @override
  _i1.Table<_i1.UuidValue> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'id': id.toJson(),
      'pipelineId': pipelineId.toJson(),
      if (pipeline != null) 'pipeline': pipeline?.toJsonForProtocol(),
      'fileName': fileName,
      'fileContent': fileContent,
      'contentHash': contentHash,
      'platform': platform.toJson(),
      'version': version,
      'isActive': isActive,
      'extractedStepCount': extractedStepCount,
      if (uploadedBy != null) 'uploadedBy': uploadedBy,
      if (steps != null)
        'steps': steps?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'createdAt': createdAt.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  static PipelineConfigurationInclude include({
    _i2.PipelineInclude? pipeline,
    _i4.PipelineStepIncludeList? steps,
  }) {
    return PipelineConfigurationInclude._(
      pipeline: pipeline,
      steps: steps,
    );
  }

  static PipelineConfigurationIncludeList includeList({
    _i1.WhereExpressionBuilder<PipelineConfigurationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PipelineConfigurationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PipelineConfigurationTable>? orderByList,
    PipelineConfigurationInclude? include,
  }) {
    return PipelineConfigurationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PipelineConfiguration.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PipelineConfiguration.t),
      include: include,
    );
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

class PipelineConfigurationTable extends _i1.Table<_i1.UuidValue> {
  PipelineConfigurationTable({super.tableRelation})
      : super(tableName: 'pipeline_configurations') {
    pipelineId = _i1.ColumnUuid(
      'pipelineId',
      this,
    );
    fileName = _i1.ColumnString(
      'fileName',
      this,
    );
    fileContent = _i1.ColumnString(
      'fileContent',
      this,
    );
    contentHash = _i1.ColumnString(
      'contentHash',
      this,
    );
    platform = _i1.ColumnEnum(
      'platform',
      this,
      _i1.EnumSerialization.byName,
    );
    version = _i1.ColumnInt(
      'version',
      this,
      hasDefault: true,
    );
    isActive = _i1.ColumnBool(
      'isActive',
      this,
      hasDefault: true,
    );
    extractedStepCount = _i1.ColumnInt(
      'extractedStepCount',
      this,
    );
    uploadedBy = _i1.ColumnInt(
      'uploadedBy',
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

  late final _i1.ColumnUuid pipelineId;

  _i2.PipelineTable? _pipeline;

  late final _i1.ColumnString fileName;

  late final _i1.ColumnString fileContent;

  late final _i1.ColumnString contentHash;

  late final _i1.ColumnEnum<_i3.CiCdPlatform> platform;

  late final _i1.ColumnInt version;

  late final _i1.ColumnBool isActive;

  late final _i1.ColumnInt extractedStepCount;

  late final _i1.ColumnInt uploadedBy;

  _i4.PipelineStepTable? ___steps;

  _i1.ManyRelation<_i4.PipelineStepTable>? _steps;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i2.PipelineTable get pipeline {
    if (_pipeline != null) return _pipeline!;
    _pipeline = _i1.createRelationTable(
      relationFieldName: 'pipeline',
      field: PipelineConfiguration.t.pipelineId,
      foreignField: _i2.Pipeline.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.PipelineTable(tableRelation: foreignTableRelation),
    );
    return _pipeline!;
  }

  _i4.PipelineStepTable get __steps {
    if (___steps != null) return ___steps!;
    ___steps = _i1.createRelationTable(
      relationFieldName: '__steps',
      field: PipelineConfiguration.t.id,
      foreignField: _i4.PipelineStep.t.configurationId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.PipelineStepTable(tableRelation: foreignTableRelation),
    );
    return ___steps!;
  }

  _i1.ManyRelation<_i4.PipelineStepTable> get steps {
    if (_steps != null) return _steps!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'steps',
      field: PipelineConfiguration.t.id,
      foreignField: _i4.PipelineStep.t.configurationId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i4.PipelineStepTable(tableRelation: foreignTableRelation),
    );
    _steps = _i1.ManyRelation<_i4.PipelineStepTable>(
      tableWithRelations: relationTable,
      table: _i4.PipelineStepTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _steps!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        pipelineId,
        fileName,
        fileContent,
        contentHash,
        platform,
        version,
        isActive,
        extractedStepCount,
        uploadedBy,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'pipeline') {
      return pipeline;
    }
    if (relationField == 'steps') {
      return __steps;
    }
    return null;
  }
}

class PipelineConfigurationInclude extends _i1.IncludeObject {
  PipelineConfigurationInclude._({
    _i2.PipelineInclude? pipeline,
    _i4.PipelineStepIncludeList? steps,
  }) {
    _pipeline = pipeline;
    _steps = steps;
  }

  _i2.PipelineInclude? _pipeline;

  _i4.PipelineStepIncludeList? _steps;

  @override
  Map<String, _i1.Include?> get includes => {
        'pipeline': _pipeline,
        'steps': _steps,
      };

  @override
  _i1.Table<_i1.UuidValue> get table => PipelineConfiguration.t;
}

class PipelineConfigurationIncludeList extends _i1.IncludeList {
  PipelineConfigurationIncludeList._({
    _i1.WhereExpressionBuilder<PipelineConfigurationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PipelineConfiguration.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => PipelineConfiguration.t;
}

class PipelineConfigurationRepository {
  const PipelineConfigurationRepository._();

  final attach = const PipelineConfigurationAttachRepository._();

  final attachRow = const PipelineConfigurationAttachRowRepository._();

  final detach = const PipelineConfigurationDetachRepository._();

  final detachRow = const PipelineConfigurationDetachRowRepository._();

  /// Returns a list of [PipelineConfiguration]s matching the given query parameters.
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
  Future<List<PipelineConfiguration>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PipelineConfigurationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PipelineConfigurationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PipelineConfigurationTable>? orderByList,
    _i1.Transaction? transaction,
    PipelineConfigurationInclude? include,
  }) async {
    return session.db.find<PipelineConfiguration>(
      where: where?.call(PipelineConfiguration.t),
      orderBy: orderBy?.call(PipelineConfiguration.t),
      orderByList: orderByList?.call(PipelineConfiguration.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Returns the first matching [PipelineConfiguration] matching the given query parameters.
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
  Future<PipelineConfiguration?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PipelineConfigurationTable>? where,
    int? offset,
    _i1.OrderByBuilder<PipelineConfigurationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PipelineConfigurationTable>? orderByList,
    _i1.Transaction? transaction,
    PipelineConfigurationInclude? include,
  }) async {
    return session.db.findFirstRow<PipelineConfiguration>(
      where: where?.call(PipelineConfiguration.t),
      orderBy: orderBy?.call(PipelineConfiguration.t),
      orderByList: orderByList?.call(PipelineConfiguration.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  /// Finds a single [PipelineConfiguration] by its [id] or null if no such row exists.
  Future<PipelineConfiguration?> findById(
    _i1.Session session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    PipelineConfigurationInclude? include,
  }) async {
    return session.db.findById<PipelineConfiguration>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  /// Inserts all [PipelineConfiguration]s in the list and returns the inserted rows.
  ///
  /// The returned [PipelineConfiguration]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PipelineConfiguration>> insert(
    _i1.Session session,
    List<PipelineConfiguration> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PipelineConfiguration>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PipelineConfiguration] and returns the inserted row.
  ///
  /// The returned [PipelineConfiguration] will have its `id` field set.
  Future<PipelineConfiguration> insertRow(
    _i1.Session session,
    PipelineConfiguration row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PipelineConfiguration>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PipelineConfiguration]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PipelineConfiguration>> update(
    _i1.Session session,
    List<PipelineConfiguration> rows, {
    _i1.ColumnSelections<PipelineConfigurationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PipelineConfiguration>(
      rows,
      columns: columns?.call(PipelineConfiguration.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PipelineConfiguration]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PipelineConfiguration> updateRow(
    _i1.Session session,
    PipelineConfiguration row, {
    _i1.ColumnSelections<PipelineConfigurationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PipelineConfiguration>(
      row,
      columns: columns?.call(PipelineConfiguration.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PipelineConfiguration]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PipelineConfiguration>> delete(
    _i1.Session session,
    List<PipelineConfiguration> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PipelineConfiguration>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PipelineConfiguration].
  Future<PipelineConfiguration> deleteRow(
    _i1.Session session,
    PipelineConfiguration row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PipelineConfiguration>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PipelineConfiguration>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PipelineConfigurationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PipelineConfiguration>(
      where: where(PipelineConfiguration.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PipelineConfigurationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PipelineConfiguration>(
      where: where?.call(PipelineConfiguration.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class PipelineConfigurationAttachRepository {
  const PipelineConfigurationAttachRepository._();

  /// Creates a relation between this [PipelineConfiguration] and the given [PipelineStep]s
  /// by setting each [PipelineStep]'s foreign key `configurationId` to refer to this [PipelineConfiguration].
  Future<void> steps(
    _i1.Session session,
    PipelineConfiguration pipelineConfiguration,
    List<_i4.PipelineStep> pipelineStep, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineStep.any((e) => e.id == null)) {
      throw ArgumentError.notNull('pipelineStep.id');
    }
    if (pipelineConfiguration.id == null) {
      throw ArgumentError.notNull('pipelineConfiguration.id');
    }

    var $pipelineStep = pipelineStep
        .map((e) => e.copyWith(configurationId: pipelineConfiguration.id))
        .toList();
    await session.db.update<_i4.PipelineStep>(
      $pipelineStep,
      columns: [_i4.PipelineStep.t.configurationId],
      transaction: transaction,
    );
  }
}

class PipelineConfigurationAttachRowRepository {
  const PipelineConfigurationAttachRowRepository._();

  /// Creates a relation between the given [PipelineConfiguration] and [Pipeline]
  /// by setting the [PipelineConfiguration]'s foreign key `pipelineId` to refer to the [Pipeline].
  Future<void> pipeline(
    _i1.Session session,
    PipelineConfiguration pipelineConfiguration,
    _i2.Pipeline pipeline, {
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
    await session.db.updateRow<PipelineConfiguration>(
      $pipelineConfiguration,
      columns: [PipelineConfiguration.t.pipelineId],
      transaction: transaction,
    );
  }

  /// Creates a relation between this [PipelineConfiguration] and the given [PipelineStep]
  /// by setting the [PipelineStep]'s foreign key `configurationId` to refer to this [PipelineConfiguration].
  Future<void> steps(
    _i1.Session session,
    PipelineConfiguration pipelineConfiguration,
    _i4.PipelineStep pipelineStep, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineStep.id == null) {
      throw ArgumentError.notNull('pipelineStep.id');
    }
    if (pipelineConfiguration.id == null) {
      throw ArgumentError.notNull('pipelineConfiguration.id');
    }

    var $pipelineStep =
        pipelineStep.copyWith(configurationId: pipelineConfiguration.id);
    await session.db.updateRow<_i4.PipelineStep>(
      $pipelineStep,
      columns: [_i4.PipelineStep.t.configurationId],
      transaction: transaction,
    );
  }
}

class PipelineConfigurationDetachRepository {
  const PipelineConfigurationDetachRepository._();

  /// Detaches the relation between this [PipelineConfiguration] and the given [PipelineStep]
  /// by setting the [PipelineStep]'s foreign key `configurationId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> steps(
    _i1.Session session,
    List<_i4.PipelineStep> pipelineStep, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineStep.any((e) => e.id == null)) {
      throw ArgumentError.notNull('pipelineStep.id');
    }

    var $pipelineStep =
        pipelineStep.map((e) => e.copyWith(configurationId: null)).toList();
    await session.db.update<_i4.PipelineStep>(
      $pipelineStep,
      columns: [_i4.PipelineStep.t.configurationId],
      transaction: transaction,
    );
  }
}

class PipelineConfigurationDetachRowRepository {
  const PipelineConfigurationDetachRowRepository._();

  /// Detaches the relation between this [PipelineConfiguration] and the given [PipelineStep]
  /// by setting the [PipelineStep]'s foreign key `configurationId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> steps(
    _i1.Session session,
    _i4.PipelineStep pipelineStep, {
    _i1.Transaction? transaction,
  }) async {
    if (pipelineStep.id == null) {
      throw ArgumentError.notNull('pipelineStep.id');
    }

    var $pipelineStep = pipelineStep.copyWith(configurationId: null);
    await session.db.updateRow<_i4.PipelineStep>(
      $pipelineStep,
      columns: [_i4.PipelineStep.t.configurationId],
      transaction: transaction,
    );
  }
}
