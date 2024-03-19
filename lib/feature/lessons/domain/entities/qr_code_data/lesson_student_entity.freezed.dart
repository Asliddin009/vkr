// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_student_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonStudentsEntity _$LessonStudentsEntityFromJson(Map<String, dynamic> json) {
  return _LessonStudentsEntity.fromJson(json);
}

/// @nodoc
mixin _$LessonStudentsEntity {
  int get totalCountStudent => throw _privateConstructorUsedError;
  int get makeCountStudent => throw _privateConstructorUsedError;
  List<UserEntity> get listStudent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonStudentsEntityCopyWith<LessonStudentsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStudentsEntityCopyWith<$Res> {
  factory $LessonStudentsEntityCopyWith(LessonStudentsEntity value,
          $Res Function(LessonStudentsEntity) then) =
      _$LessonStudentsEntityCopyWithImpl<$Res, LessonStudentsEntity>;
  @useResult
  $Res call(
      {int totalCountStudent,
      int makeCountStudent,
      List<UserEntity> listStudent});
}

/// @nodoc
class _$LessonStudentsEntityCopyWithImpl<$Res,
        $Val extends LessonStudentsEntity>
    implements $LessonStudentsEntityCopyWith<$Res> {
  _$LessonStudentsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCountStudent = null,
    Object? makeCountStudent = null,
    Object? listStudent = null,
  }) {
    return _then(_value.copyWith(
      totalCountStudent: null == totalCountStudent
          ? _value.totalCountStudent
          : totalCountStudent // ignore: cast_nullable_to_non_nullable
              as int,
      makeCountStudent: null == makeCountStudent
          ? _value.makeCountStudent
          : makeCountStudent // ignore: cast_nullable_to_non_nullable
              as int,
      listStudent: null == listStudent
          ? _value.listStudent
          : listStudent // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonStudentsEntityImplCopyWith<$Res>
    implements $LessonStudentsEntityCopyWith<$Res> {
  factory _$$LessonStudentsEntityImplCopyWith(_$LessonStudentsEntityImpl value,
          $Res Function(_$LessonStudentsEntityImpl) then) =
      __$$LessonStudentsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalCountStudent,
      int makeCountStudent,
      List<UserEntity> listStudent});
}

/// @nodoc
class __$$LessonStudentsEntityImplCopyWithImpl<$Res>
    extends _$LessonStudentsEntityCopyWithImpl<$Res, _$LessonStudentsEntityImpl>
    implements _$$LessonStudentsEntityImplCopyWith<$Res> {
  __$$LessonStudentsEntityImplCopyWithImpl(_$LessonStudentsEntityImpl _value,
      $Res Function(_$LessonStudentsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCountStudent = null,
    Object? makeCountStudent = null,
    Object? listStudent = null,
  }) {
    return _then(_$LessonStudentsEntityImpl(
      totalCountStudent: null == totalCountStudent
          ? _value.totalCountStudent
          : totalCountStudent // ignore: cast_nullable_to_non_nullable
              as int,
      makeCountStudent: null == makeCountStudent
          ? _value.makeCountStudent
          : makeCountStudent // ignore: cast_nullable_to_non_nullable
              as int,
      listStudent: null == listStudent
          ? _value._listStudent
          : listStudent // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonStudentsEntityImpl implements _LessonStudentsEntity {
  const _$LessonStudentsEntityImpl(
      {required this.totalCountStudent,
      required this.makeCountStudent,
      final List<UserEntity> listStudent = const []})
      : _listStudent = listStudent;

  factory _$LessonStudentsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonStudentsEntityImplFromJson(json);

  @override
  final int totalCountStudent;
  @override
  final int makeCountStudent;
  final List<UserEntity> _listStudent;
  @override
  @JsonKey()
  List<UserEntity> get listStudent {
    if (_listStudent is EqualUnmodifiableListView) return _listStudent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listStudent);
  }

  @override
  String toString() {
    return 'LessonStudentsEntity(totalCountStudent: $totalCountStudent, makeCountStudent: $makeCountStudent, listStudent: $listStudent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonStudentsEntityImpl &&
            (identical(other.totalCountStudent, totalCountStudent) ||
                other.totalCountStudent == totalCountStudent) &&
            (identical(other.makeCountStudent, makeCountStudent) ||
                other.makeCountStudent == makeCountStudent) &&
            const DeepCollectionEquality()
                .equals(other._listStudent, _listStudent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCountStudent,
      makeCountStudent, const DeepCollectionEquality().hash(_listStudent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonStudentsEntityImplCopyWith<_$LessonStudentsEntityImpl>
      get copyWith =>
          __$$LessonStudentsEntityImplCopyWithImpl<_$LessonStudentsEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonStudentsEntityImplToJson(
      this,
    );
  }
}

abstract class _LessonStudentsEntity implements LessonStudentsEntity {
  const factory _LessonStudentsEntity(
      {required final int totalCountStudent,
      required final int makeCountStudent,
      final List<UserEntity> listStudent}) = _$LessonStudentsEntityImpl;

  factory _LessonStudentsEntity.fromJson(Map<String, dynamic> json) =
      _$LessonStudentsEntityImpl.fromJson;

  @override
  int get totalCountStudent;
  @override
  int get makeCountStudent;
  @override
  List<UserEntity> get listStudent;
  @override
  @JsonKey(ignore: true)
  _$$LessonStudentsEntityImplCopyWith<_$LessonStudentsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
