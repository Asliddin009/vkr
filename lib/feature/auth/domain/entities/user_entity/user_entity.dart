// ignore_for_file: invalid_annotation_target

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    @JsonKey(name: 'UserType') String? userType,
    @JsonKey(name: 'Token') String? token,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Signature') String? signature,
    @JsonKey(name: 'IsTeacher') bool? isTeacher,
    @JsonKey(name: 'ExpirateTime') String? expirateTime,
    @Default(AttendanceStatus.absent) AttendanceStatus attendanceStatus,
    @JsonKey(includeFromJson: false) AsyncSnapshot? userState,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}

enum AttendanceStatus {
  /// отметился
  present,

  /// не отметился
  absent,

  /// не был по уважительной причине
  excused,

  /// болел
  sick
}
