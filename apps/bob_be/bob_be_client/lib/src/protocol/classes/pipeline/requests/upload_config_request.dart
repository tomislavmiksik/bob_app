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
import '../../../enums/cicd_workflow_platform.dart' as _i2;

abstract class UploadConfigRequest implements _i1.SerializableModel {
  UploadConfigRequest._({
    required this.repositoryName,
    required this.platform,
    required this.fileName,
    bool? overwriteExisting,
  }) : overwriteExisting = overwriteExisting ?? false;

  factory UploadConfigRequest({
    required String repositoryName,
    required _i2.CiCdPlatform platform,
    required String fileName,
    bool? overwriteExisting,
  }) = _UploadConfigRequestImpl;

  factory UploadConfigRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return UploadConfigRequest(
      repositoryName: jsonSerialization['repositoryName'] as String,
      platform:
          _i2.CiCdPlatform.fromJson((jsonSerialization['platform'] as String)),
      fileName: jsonSerialization['fileName'] as String,
      overwriteExisting: jsonSerialization['overwriteExisting'] as bool,
    );
  }

  String repositoryName;

  _i2.CiCdPlatform platform;

  String fileName;

  bool overwriteExisting;

  /// Returns a shallow copy of this [UploadConfigRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UploadConfigRequest copyWith({
    String? repositoryName,
    _i2.CiCdPlatform? platform,
    String? fileName,
    bool? overwriteExisting,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'repositoryName': repositoryName,
      'platform': platform.toJson(),
      'fileName': fileName,
      'overwriteExisting': overwriteExisting,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _UploadConfigRequestImpl extends UploadConfigRequest {
  _UploadConfigRequestImpl({
    required String repositoryName,
    required _i2.CiCdPlatform platform,
    required String fileName,
    bool? overwriteExisting,
  }) : super._(
          repositoryName: repositoryName,
          platform: platform,
          fileName: fileName,
          overwriteExisting: overwriteExisting,
        );

  /// Returns a shallow copy of this [UploadConfigRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UploadConfigRequest copyWith({
    String? repositoryName,
    _i2.CiCdPlatform? platform,
    String? fileName,
    bool? overwriteExisting,
  }) {
    return UploadConfigRequest(
      repositoryName: repositoryName ?? this.repositoryName,
      platform: platform ?? this.platform,
      fileName: fileName ?? this.fileName,
      overwriteExisting: overwriteExisting ?? this.overwriteExisting,
    );
  }
}
