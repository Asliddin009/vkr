// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  @JsonKey(name: 'UserType')
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Signature')
  String? get signature => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsTeacher')
  bool? get isTeacher => throw _privateConstructorUsedError;
  @JsonKey(name: 'ExpirateTime')
  String? get expirateTime => throw _privateConstructorUsedError;
  AttendanceStatus get attendanceStatus => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  AsyncSnapshot<dynamic>? get userState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'UserType') String? userType,
      @JsonKey(name: 'Token') String? token,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Signature') String? signature,
      @JsonKey(name: 'IsTeacher') bool? isTeacher,
      @JsonKey(name: 'ExpirateTime') String? expirateTime,
      AttendanceStatus attendanceStatus,
      @JsonKey(includeFromJson: false) AsyncSnapshot<dynamic>? userState});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = freezed,
    Object? token = freezed,
    Object? name = null,
    Object? signature = freezed,
    Object? isTeacher = freezed,
    Object? expirateTime = freezed,
    Object? attendanceStatus = null,
    Object? userState = freezed,
  }) {
    return _then(_value.copyWith(
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      isTeacher: freezed == isTeacher
          ? _value.isTeacher
          : isTeacher // ignore: cast_nullable_to_non_nullable
              as bool?,
      expirateTime: freezed == expirateTime
          ? _value.expirateTime
          : expirateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceStatus: null == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as AttendanceStatus,
      userState: freezed == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntityImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityImplCopyWith(
          _$UserEntityImpl value, $Res Function(_$UserEntityImpl) then) =
      __$$UserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'UserType') String? userType,
      @JsonKey(name: 'Token') String? token,
      @JsonKey(name: 'Name') String name,
      @JsonKey(name: 'Signature') String? signature,
      @JsonKey(name: 'IsTeacher') bool? isTeacher,
      @JsonKey(name: 'ExpirateTime') String? expirateTime,
      AttendanceStatus attendanceStatus,
      @JsonKey(includeFromJson: false) AsyncSnapshot<dynamic>? userState});
}

/// @nodoc
class __$$UserEntityImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityImpl>
    implements _$$UserEntityImplCopyWith<$Res> {
  __$$UserEntityImplCopyWithImpl(
      _$UserEntityImpl _value, $Res Function(_$UserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = freezed,
    Object? token = freezed,
    Object? name = null,
    Object? signature = freezed,
    Object? isTeacher = freezed,
    Object? expirateTime = freezed,
    Object? attendanceStatus = null,
    Object? userState = freezed,
  }) {
    return _then(_$UserEntityImpl(
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      isTeacher: freezed == isTeacher
          ? _value.isTeacher
          : isTeacher // ignore: cast_nullable_to_non_nullable
              as bool?,
      expirateTime: freezed == expirateTime
          ? _value.expirateTime
          : expirateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      attendanceStatus: null == attendanceStatus
          ? _value.attendanceStatus
          : attendanceStatus // ignore: cast_nullable_to_non_nullable
              as AttendanceStatus,
      userState: freezed == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEntityImpl implements _UserEntity {
  const _$UserEntityImpl(
      {@JsonKey(name: 'UserType') this.userType,
      @JsonKey(name: 'Token') this.token,
      @JsonKey(name: 'Name') required this.name,
      @JsonKey(name: 'Signature') this.signature,
      @JsonKey(name: 'IsTeacher') this.isTeacher,
      @JsonKey(name: 'ExpirateTime') this.expirateTime,
      this.attendanceStatus = AttendanceStatus.absent,
      @JsonKey(includeFromJson: false) this.userState});

  factory _$UserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEntityImplFromJson(json);

  @override
  @JsonKey(name: 'UserType')
  final String? userType;
  @override
  @JsonKey(name: 'Token')
  final String? token;
  @override
  @JsonKey(name: 'Name')
  final String name;
  @override
  @JsonKey(name: 'Signature')
  final String? signature;
  @override
  @JsonKey(name: 'IsTeacher')
  final bool? isTeacher;
  @override
  @JsonKey(name: 'ExpirateTime')
  final String? expirateTime;
  @override
  @JsonKey()
  final AttendanceStatus attendanceStatus;
  @override
  @JsonKey(includeFromJson: false)
  final AsyncSnapshot<dynamic>? userState;

  @override
  String toString() {
    return 'UserEntity(userType: $userType, token: $token, name: $name, signature: $signature, isTeacher: $isTeacher, expirateTime: $expirateTime, attendanceStatus: $attendanceStatus, userState: $userState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityImpl &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.isTeacher, isTeacher) ||
                other.isTeacher == isTeacher) &&
            (identical(other.expirateTime, expirateTime) ||
                other.expirateTime == expirateTime) &&
            (identical(other.attendanceStatus, attendanceStatus) ||
                other.attendanceStatus == attendanceStatus) &&
            (identical(other.userState, userState) ||
                other.userState == userState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userType, token, name, signature,
      isTeacher, expirateTime, attendanceStatus, userState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      __$$UserEntityImplCopyWithImpl<_$UserEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEntityImplToJson(
      this,
    );
  }
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {@JsonKey(name: 'UserType') final String? userType,
      @JsonKey(name: 'Token') final String? token,
      @JsonKey(name: 'Name') required final String name,
      @JsonKey(name: 'Signature') final String? signature,
      @JsonKey(name: 'IsTeacher') final bool? isTeacher,
      @JsonKey(name: 'ExpirateTime') final String? expirateTime,
      final AttendanceStatus attendanceStatus,
      @JsonKey(includeFromJson: false)
      final AsyncSnapshot<dynamic>? userState}) = _$UserEntityImpl;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$UserEntityImpl.fromJson;

  @override
  @JsonKey(name: 'UserType')
  String? get userType;
  @override
  @JsonKey(name: 'Token')
  String? get token;
  @override
  @JsonKey(name: 'Name')
  String get name;
  @override
  @JsonKey(name: 'Signature')
  String? get signature;
  @override
  @JsonKey(name: 'IsTeacher')
  bool? get isTeacher;
  @override
  @JsonKey(name: 'ExpirateTime')
  String? get expirateTime;
  @override
  AttendanceStatus get attendanceStatus;
  @override
  @JsonKey(includeFromJson: false)
  AsyncSnapshot<dynamic>? get userState;
  @override
  @JsonKey(ignore: true)
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
