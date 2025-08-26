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
import '../../enums/cicd_workflow_platform.dart' as _i2;

abstract class CICDWorkflowEvent implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
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
