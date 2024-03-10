import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String email,
    required String username,
    required String id,
    String? accessToken,
    String? refreshToken,
    // ignore: invalid_annotation_target, deprecated_member_use
    @JsonKey(ignore: true) AsyncSnapshot? userState,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
