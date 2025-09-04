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

abstract class BadRequestException
    implements _i1.SerializableException, _i1.SerializableModel {
  BadRequestException._({
    required this.message,
    required this.errorCode,
  });

  factory BadRequestException({
    required String message,
    required int errorCode,
  }) = _BadRequestExceptionImpl;

  factory BadRequestException.fromJson(Map<String, dynamic> jsonSerialization) {
    return BadRequestException(
      message: jsonSerialization['message'] as String,
      errorCode: jsonSerialization['errorCode'] as int,
    );
  }

  String message;

  int errorCode;

  /// Returns a shallow copy of this [BadRequestException]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  BadRequestException copyWith({
    String? message,
    int? errorCode,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'errorCode': errorCode,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _BadRequestExceptionImpl extends BadRequestException {
  _BadRequestExceptionImpl({
    required String message,
    required int errorCode,
  }) : super._(
          message: message,
          errorCode: errorCode,
        );

  /// Returns a shallow copy of this [BadRequestException]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  BadRequestException copyWith({
    String? message,
    int? errorCode,
  }) {
    return BadRequestException(
      message: message ?? this.message,
      errorCode: errorCode ?? this.errorCode,
    );
  }
}
