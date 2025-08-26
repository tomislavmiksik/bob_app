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

abstract class CICDWorkflowEventRequest implements _i1.SerializableModel {
  CICDWorkflowEventRequest._({
    required this.workflowName,
    required this.buildId,
    required this.branch,
    required this.commitSha,
    required this.status,
    required this.startTime,
    required this.triggerType,
    this.environment,
    this.platform,
    this.repositoryName,
    this.authorName,
    this.authorEmail,
    this.pullRequestNumber,
  });

  factory CICDWorkflowEventRequest({
    required String workflowName,
    required String buildId,
    required String branch,
    required String commitSha,
    required String status,
    required DateTime startTime,
    required String triggerType,
    String? environment,
    _i2.CiCdPlatform? platform,
    String? repositoryName,
    String? authorName,
    String? authorEmail,
    int? pullRequestNumber,
  }) = _CICDWorkflowEventRequestImpl;

  factory CICDWorkflowEventRequest.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return CICDWorkflowEventRequest(
      workflowName: jsonSerialization['workflowName'] as String,
      buildId: jsonSerialization['buildId'] as String,
      branch: jsonSerialization['branch'] as String,
      commitSha: jsonSerialization['commitSha'] as String,
      status: jsonSerialization['status'] as String,
      startTime:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startTime']),
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
    );
  }

  String workflowName;

  String buildId;

  String branch;

  String commitSha;

  String status;

  DateTime startTime;

  String triggerType;

  String? environment;

  _i2.CiCdPlatform? platform;

  String? repositoryName;

  String? authorName;

  String? authorEmail;

  int? pullRequestNumber;

  /// Returns a shallow copy of this [CICDWorkflowEventRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CICDWorkflowEventRequest copyWith({
    String? workflowName,
    String? buildId,
    String? branch,
    String? commitSha,
    String? status,
    DateTime? startTime,
    String? triggerType,
    String? environment,
    _i2.CiCdPlatform? platform,
    String? repositoryName,
    String? authorName,
    String? authorEmail,
    int? pullRequestNumber,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'workflowName': workflowName,
      'buildId': buildId,
      'branch': branch,
      'commitSha': commitSha,
      'status': status,
      'startTime': startTime.toJson(),
      'triggerType': triggerType,
      if (environment != null) 'environment': environment,
      if (platform != null) 'platform': platform?.toJson(),
      if (repositoryName != null) 'repositoryName': repositoryName,
      if (authorName != null) 'authorName': authorName,
      if (authorEmail != null) 'authorEmail': authorEmail,
      if (pullRequestNumber != null) 'pullRequestNumber': pullRequestNumber,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CICDWorkflowEventRequestImpl extends CICDWorkflowEventRequest {
  _CICDWorkflowEventRequestImpl({
    required String workflowName,
    required String buildId,
    required String branch,
    required String commitSha,
    required String status,
    required DateTime startTime,
    required String triggerType,
    String? environment,
    _i2.CiCdPlatform? platform,
    String? repositoryName,
    String? authorName,
    String? authorEmail,
    int? pullRequestNumber,
  }) : super._(
          workflowName: workflowName,
          buildId: buildId,
          branch: branch,
          commitSha: commitSha,
          status: status,
          startTime: startTime,
          triggerType: triggerType,
          environment: environment,
          platform: platform,
          repositoryName: repositoryName,
          authorName: authorName,
          authorEmail: authorEmail,
          pullRequestNumber: pullRequestNumber,
        );

  /// Returns a shallow copy of this [CICDWorkflowEventRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CICDWorkflowEventRequest copyWith({
    String? workflowName,
    String? buildId,
    String? branch,
    String? commitSha,
    String? status,
    DateTime? startTime,
    String? triggerType,
    Object? environment = _Undefined,
    Object? platform = _Undefined,
    Object? repositoryName = _Undefined,
    Object? authorName = _Undefined,
    Object? authorEmail = _Undefined,
    Object? pullRequestNumber = _Undefined,
  }) {
    return CICDWorkflowEventRequest(
      workflowName: workflowName ?? this.workflowName,
      buildId: buildId ?? this.buildId,
      branch: branch ?? this.branch,
      commitSha: commitSha ?? this.commitSha,
      status: status ?? this.status,
      startTime: startTime ?? this.startTime,
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
    );
  }
}
