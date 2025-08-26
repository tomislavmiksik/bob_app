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

abstract class CICDWorkflowEventSummary
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  CICDWorkflowEventSummary._({
    this.id,
    required this.workflowName,
    required this.buildId,
    required this.status,
    this.duration,
    required this.createdAt,
  });

  factory CICDWorkflowEventSummary({
    _i1.UuidValue? id,
    required String workflowName,
    required String buildId,
    required String status,
    int? duration,
    required DateTime createdAt,
  }) = _CICDWorkflowEventSummaryImpl;

  factory CICDWorkflowEventSummary.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return CICDWorkflowEventSummary(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      workflowName: jsonSerialization['workflowName'] as String,
      buildId: jsonSerialization['buildId'] as String,
      status: jsonSerialization['status'] as String,
      duration: jsonSerialization['duration'] as int?,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  _i1.UuidValue? id;

  String workflowName;

  String buildId;

  String status;

  int? duration;

  DateTime createdAt;

  /// Returns a shallow copy of this [CICDWorkflowEventSummary]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CICDWorkflowEventSummary copyWith({
    _i1.UuidValue? id,
    String? workflowName,
    String? buildId,
    String? status,
    int? duration,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id?.toJson(),
      'workflowName': workflowName,
      'buildId': buildId,
      'status': status,
      if (duration != null) 'duration': duration,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id?.toJson(),
      'workflowName': workflowName,
      'buildId': buildId,
      'status': status,
      if (duration != null) 'duration': duration,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CICDWorkflowEventSummaryImpl extends CICDWorkflowEventSummary {
  _CICDWorkflowEventSummaryImpl({
    _i1.UuidValue? id,
    required String workflowName,
    required String buildId,
    required String status,
    int? duration,
    required DateTime createdAt,
  }) : super._(
          id: id,
          workflowName: workflowName,
          buildId: buildId,
          status: status,
          duration: duration,
          createdAt: createdAt,
        );

  /// Returns a shallow copy of this [CICDWorkflowEventSummary]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CICDWorkflowEventSummary copyWith({
    Object? id = _Undefined,
    String? workflowName,
    String? buildId,
    String? status,
    Object? duration = _Undefined,
    DateTime? createdAt,
  }) {
    return CICDWorkflowEventSummary(
      id: id is _i1.UuidValue? ? id : this.id,
      workflowName: workflowName ?? this.workflowName,
      buildId: buildId ?? this.buildId,
      status: status ?? this.status,
      duration: duration is int? ? duration : this.duration,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
