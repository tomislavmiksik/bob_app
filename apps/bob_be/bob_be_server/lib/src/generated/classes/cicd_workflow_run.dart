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
import '../enums/cicd_workflow_platform.dart' as _i2;

abstract class CICDWorkflowEvent
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  CICDWorkflowEvent._({
    _i1.UuidValue? id,
    required this.workflowName,
    required this.buildId,
    required this.branch,
    required this.commitSha,
    required this.status,
    required this.startTime,
    this.endTime,
    this.duration,
    required this.triggerType,
    this.environment,
    this.platform,
    this.repositoryName,
    this.authorName,
    this.authorEmail,
    this.pullRequestNumber,
    required this.createdAt,
    this.updatedAt,
  }) : id = id ?? _i1.Uuid().v4obj();

  factory CICDWorkflowEvent({
    _i1.UuidValue? id,
    required String workflowName,
    required String buildId,
    required String branch,
    required String commitSha,
    required String status,
    required DateTime startTime,
    DateTime? endTime,
    int? duration,
    required String triggerType,
    String? environment,
    _i2.CiCdPlatform? platform,
    String? repositoryName,
    String? authorName,
    String? authorEmail,
    int? pullRequestNumber,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _CICDWorkflowEventImpl;

  factory CICDWorkflowEvent.fromJson(Map<String, dynamic> jsonSerialization) {
    return CICDWorkflowEvent(
      id: _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      workflowName: jsonSerialization['workflowName'] as String,
      buildId: jsonSerialization['buildId'] as String,
      branch: jsonSerialization['branch'] as String,
      commitSha: jsonSerialization['commitSha'] as String,
      status: jsonSerialization['status'] as String,
      startTime:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startTime']),
      endTime: jsonSerialization['endTime'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endTime']),
      duration: jsonSerialization['duration'] as int?,
      triggerType: jsonSerialization['triggerType'] as String,
      environment: jsonSerialization['environment'] as String?,
      platform: jsonSerialization['platform'] == null
          ? null
          : _i2.CiCdPlatform.fromJson(
              (jsonSerialization['platform'] as String)),
      repositoryName: jsonSerialization['repositoryName'] as String?,
      authorName: jsonSerialization['authorName'] as String?,
      authorEmail: jsonSerialization['authorEmail'] as String?,
      pullRequestNumber: jsonSerialization['pullRequestNumber'] as int?,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = CICDWorkflowEventTable();

  static const db = CICDWorkflowEventRepository._();

  @override
  _i1.UuidValue id;

  String workflowName;

  String buildId;

  String branch;

  String commitSha;

  String status;

  DateTime startTime;

  DateTime? endTime;

  int? duration;

  String triggerType;

  String? environment;

  _i2.CiCdPlatform? platform;

  String? repositoryName;

  String? authorName;

  String? authorEmail;

  int? pullRequestNumber;

  DateTime createdAt;

  DateTime? updatedAt;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [CICDWorkflowEvent]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CICDWorkflowEvent copyWith({
    _i1.UuidValue? id,
    String? workflowName,
    String? buildId,
    String? branch,
    String? commitSha,
    String? status,
    DateTime? startTime,
    DateTime? endTime,
    int? duration,
    String? triggerType,
    String? environment,
    _i2.CiCdPlatform? platform,
    String? repositoryName,
    String? authorName,
    String? authorEmail,
    int? pullRequestNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id.toJson(),
      'workflowName': workflowName,
      'buildId': buildId,
      'branch': branch,
      'commitSha': commitSha,
      'status': status,
      'startTime': startTime.toJson(),
      if (endTime != null) 'endTime': endTime?.toJson(),
      if (duration != null) 'duration': duration,
      'triggerType': triggerType,
      if (environment != null) 'environment': environment,
      if (platform != null) 'platform': platform?.toJson(),
      if (repositoryName != null) 'repositoryName': repositoryName,
      if (authorName != null) 'authorName': authorName,
      if (authorEmail != null) 'authorEmail': authorEmail,
      if (pullRequestNumber != null) 'pullRequestNumber': pullRequestNumber,
      'createdAt': createdAt.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'id': id.toJson(),
      'workflowName': workflowName,
      'buildId': buildId,
      'branch': branch,
      'commitSha': commitSha,
      'status': status,
      'startTime': startTime.toJson(),
      if (endTime != null) 'endTime': endTime?.toJson(),
      if (duration != null) 'duration': duration,
      'triggerType': triggerType,
      if (environment != null) 'environment': environment,
      if (platform != null) 'platform': platform?.toJson(),
      if (repositoryName != null) 'repositoryName': repositoryName,
      if (authorName != null) 'authorName': authorName,
      if (authorEmail != null) 'authorEmail': authorEmail,
      if (pullRequestNumber != null) 'pullRequestNumber': pullRequestNumber,
      'createdAt': createdAt.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  static CICDWorkflowEventInclude include() {
    return CICDWorkflowEventInclude._();
  }

  static CICDWorkflowEventIncludeList includeList({
    _i1.WhereExpressionBuilder<CICDWorkflowEventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CICDWorkflowEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CICDWorkflowEventTable>? orderByList,
    CICDWorkflowEventInclude? include,
  }) {
    return CICDWorkflowEventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CICDWorkflowEvent.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CICDWorkflowEvent.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CICDWorkflowEventImpl extends CICDWorkflowEvent {
  _CICDWorkflowEventImpl({
    _i1.UuidValue? id,
    required String workflowName,
    required String buildId,
    required String branch,
    required String commitSha,
    required String status,
    required DateTime startTime,
    DateTime? endTime,
    int? duration,
    required String triggerType,
    String? environment,
    _i2.CiCdPlatform? platform,
    String? repositoryName,
    String? authorName,
    String? authorEmail,
    int? pullRequestNumber,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) : super._(
          id: id,
          workflowName: workflowName,
          buildId: buildId,
          branch: branch,
          commitSha: commitSha,
          status: status,
          startTime: startTime,
          endTime: endTime,
          duration: duration,
          triggerType: triggerType,
          environment: environment,
          platform: platform,
          repositoryName: repositoryName,
          authorName: authorName,
          authorEmail: authorEmail,
          pullRequestNumber: pullRequestNumber,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [CICDWorkflowEvent]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CICDWorkflowEvent copyWith({
    _i1.UuidValue? id,
    String? workflowName,
    String? buildId,
    String? branch,
    String? commitSha,
    String? status,
    DateTime? startTime,
    Object? endTime = _Undefined,
    Object? duration = _Undefined,
    String? triggerType,
    Object? environment = _Undefined,
    Object? platform = _Undefined,
    Object? repositoryName = _Undefined,
    Object? authorName = _Undefined,
    Object? authorEmail = _Undefined,
    Object? pullRequestNumber = _Undefined,
    DateTime? createdAt,
    Object? updatedAt = _Undefined,
  }) {
    return CICDWorkflowEvent(
      id: id ?? this.id,
      workflowName: workflowName ?? this.workflowName,
      buildId: buildId ?? this.buildId,
      branch: branch ?? this.branch,
      commitSha: commitSha ?? this.commitSha,
      status: status ?? this.status,
      startTime: startTime ?? this.startTime,
      endTime: endTime is DateTime? ? endTime : this.endTime,
      duration: duration is int? ? duration : this.duration,
      triggerType: triggerType ?? this.triggerType,
      environment: environment is String? ? environment : this.environment,
      platform: platform is _i2.CiCdPlatform? ? platform : this.platform,
      repositoryName:
          repositoryName is String? ? repositoryName : this.repositoryName,
      authorName: authorName is String? ? authorName : this.authorName,
      authorEmail: authorEmail is String? ? authorEmail : this.authorEmail,
      pullRequestNumber: pullRequestNumber is int?
          ? pullRequestNumber
          : this.pullRequestNumber,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}

class CICDWorkflowEventTable extends _i1.Table<_i1.UuidValue> {
  CICDWorkflowEventTable({super.tableRelation})
      : super(tableName: 'cicd_workflow_events') {
    workflowName = _i1.ColumnString(
      'workflowName',
      this,
    );
    buildId = _i1.ColumnString(
      'buildId',
      this,
    );
    branch = _i1.ColumnString(
      'branch',
      this,
    );
    commitSha = _i1.ColumnString(
      'commitSha',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    startTime = _i1.ColumnDateTime(
      'startTime',
      this,
    );
    endTime = _i1.ColumnDateTime(
      'endTime',
      this,
    );
    duration = _i1.ColumnInt(
      'duration',
      this,
    );
    triggerType = _i1.ColumnString(
      'triggerType',
      this,
    );
    environment = _i1.ColumnString(
      'environment',
      this,
    );
    platform = _i1.ColumnEnum(
      'platform',
      this,
      _i1.EnumSerialization.byName,
    );
    repositoryName = _i1.ColumnString(
      'repositoryName',
      this,
    );
    authorName = _i1.ColumnString(
      'authorName',
      this,
    );
    authorEmail = _i1.ColumnString(
      'authorEmail',
      this,
    );
    pullRequestNumber = _i1.ColumnInt(
      'pullRequestNumber',
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

  late final _i1.ColumnString workflowName;

  late final _i1.ColumnString buildId;

  late final _i1.ColumnString branch;

  late final _i1.ColumnString commitSha;

  late final _i1.ColumnString status;

  late final _i1.ColumnDateTime startTime;

  late final _i1.ColumnDateTime endTime;

  late final _i1.ColumnInt duration;

  late final _i1.ColumnString triggerType;

  late final _i1.ColumnString environment;

  late final _i1.ColumnEnum<_i2.CiCdPlatform> platform;

  late final _i1.ColumnString repositoryName;

  late final _i1.ColumnString authorName;

  late final _i1.ColumnString authorEmail;

  late final _i1.ColumnInt pullRequestNumber;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        workflowName,
        buildId,
        branch,
        commitSha,
        status,
        startTime,
        endTime,
        duration,
        triggerType,
        environment,
        platform,
        repositoryName,
        authorName,
        authorEmail,
        pullRequestNumber,
        createdAt,
        updatedAt,
      ];
}

class CICDWorkflowEventInclude extends _i1.IncludeObject {
  CICDWorkflowEventInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<_i1.UuidValue> get table => CICDWorkflowEvent.t;
}

class CICDWorkflowEventIncludeList extends _i1.IncludeList {
  CICDWorkflowEventIncludeList._({
    _i1.WhereExpressionBuilder<CICDWorkflowEventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CICDWorkflowEvent.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => CICDWorkflowEvent.t;
}

class CICDWorkflowEventRepository {
  const CICDWorkflowEventRepository._();

  /// Returns a list of [CICDWorkflowEvent]s matching the given query parameters.
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
  Future<List<CICDWorkflowEvent>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CICDWorkflowEventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CICDWorkflowEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CICDWorkflowEventTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<CICDWorkflowEvent>(
      where: where?.call(CICDWorkflowEvent.t),
      orderBy: orderBy?.call(CICDWorkflowEvent.t),
      orderByList: orderByList?.call(CICDWorkflowEvent.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [CICDWorkflowEvent] matching the given query parameters.
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
  Future<CICDWorkflowEvent?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CICDWorkflowEventTable>? where,
    int? offset,
    _i1.OrderByBuilder<CICDWorkflowEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CICDWorkflowEventTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<CICDWorkflowEvent>(
      where: where?.call(CICDWorkflowEvent.t),
      orderBy: orderBy?.call(CICDWorkflowEvent.t),
      orderByList: orderByList?.call(CICDWorkflowEvent.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [CICDWorkflowEvent] by its [id] or null if no such row exists.
  Future<CICDWorkflowEvent?> findById(
    _i1.Session session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<CICDWorkflowEvent>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [CICDWorkflowEvent]s in the list and returns the inserted rows.
  ///
  /// The returned [CICDWorkflowEvent]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<CICDWorkflowEvent>> insert(
    _i1.Session session,
    List<CICDWorkflowEvent> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<CICDWorkflowEvent>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [CICDWorkflowEvent] and returns the inserted row.
  ///
  /// The returned [CICDWorkflowEvent] will have its `id` field set.
  Future<CICDWorkflowEvent> insertRow(
    _i1.Session session,
    CICDWorkflowEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<CICDWorkflowEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [CICDWorkflowEvent]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<CICDWorkflowEvent>> update(
    _i1.Session session,
    List<CICDWorkflowEvent> rows, {
    _i1.ColumnSelections<CICDWorkflowEventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<CICDWorkflowEvent>(
      rows,
      columns: columns?.call(CICDWorkflowEvent.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CICDWorkflowEvent]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CICDWorkflowEvent> updateRow(
    _i1.Session session,
    CICDWorkflowEvent row, {
    _i1.ColumnSelections<CICDWorkflowEventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<CICDWorkflowEvent>(
      row,
      columns: columns?.call(CICDWorkflowEvent.t),
      transaction: transaction,
    );
  }

  /// Deletes all [CICDWorkflowEvent]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<CICDWorkflowEvent>> delete(
    _i1.Session session,
    List<CICDWorkflowEvent> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CICDWorkflowEvent>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [CICDWorkflowEvent].
  Future<CICDWorkflowEvent> deleteRow(
    _i1.Session session,
    CICDWorkflowEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CICDWorkflowEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<CICDWorkflowEvent>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CICDWorkflowEventTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<CICDWorkflowEvent>(
      where: where(CICDWorkflowEvent.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CICDWorkflowEventTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<CICDWorkflowEvent>(
      where: where?.call(CICDWorkflowEvent.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
