// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_lesson_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailLessonState {
  AsyncSnapshot<dynamic> get asyncSnapshot =>
      throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  bool get isFullQrCode => throw _privateConstructorUsedError;
  int get timer => throw _privateConstructorUsedError;
  LessonStudentsEntity? get lessonStudentsEntity =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailLessonStateCopyWith<DetailLessonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailLessonStateCopyWith<$Res> {
  factory $DetailLessonStateCopyWith(
          DetailLessonState value, $Res Function(DetailLessonState) then) =
      _$DetailLessonStateCopyWithImpl<$Res, DetailLessonState>;
  @useResult
  $Res call(
      {AsyncSnapshot<dynamic> asyncSnapshot,
      String url,
      bool isFullQrCode,
      int timer,
      LessonStudentsEntity? lessonStudentsEntity});

  $LessonStudentsEntityCopyWith<$Res>? get lessonStudentsEntity;
}

/// @nodoc
class _$DetailLessonStateCopyWithImpl<$Res, $Val extends DetailLessonState>
    implements $DetailLessonStateCopyWith<$Res> {
  _$DetailLessonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? url = null,
    Object? isFullQrCode = null,
    Object? timer = null,
    Object? lessonStudentsEntity = freezed,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isFullQrCode: null == isFullQrCode
          ? _value.isFullQrCode
          : isFullQrCode // ignore: cast_nullable_to_non_nullable
              as bool,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int,
      lessonStudentsEntity: freezed == lessonStudentsEntity
          ? _value.lessonStudentsEntity
          : lessonStudentsEntity // ignore: cast_nullable_to_non_nullable
              as LessonStudentsEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LessonStudentsEntityCopyWith<$Res>? get lessonStudentsEntity {
    if (_value.lessonStudentsEntity == null) {
      return null;
    }

    return $LessonStudentsEntityCopyWith<$Res>(_value.lessonStudentsEntity!,
        (value) {
      return _then(_value.copyWith(lessonStudentsEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailLessonStateImplCopyWith<$Res>
    implements $DetailLessonStateCopyWith<$Res> {
  factory _$$DetailLessonStateImplCopyWith(_$DetailLessonStateImpl value,
          $Res Function(_$DetailLessonStateImpl) then) =
      __$$DetailLessonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncSnapshot<dynamic> asyncSnapshot,
      String url,
      bool isFullQrCode,
      int timer,
      LessonStudentsEntity? lessonStudentsEntity});

  @override
  $LessonStudentsEntityCopyWith<$Res>? get lessonStudentsEntity;
}

/// @nodoc
class __$$DetailLessonStateImplCopyWithImpl<$Res>
    extends _$DetailLessonStateCopyWithImpl<$Res, _$DetailLessonStateImpl>
    implements _$$DetailLessonStateImplCopyWith<$Res> {
  __$$DetailLessonStateImplCopyWithImpl(_$DetailLessonStateImpl _value,
      $Res Function(_$DetailLessonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? url = null,
    Object? isFullQrCode = null,
    Object? timer = null,
    Object? lessonStudentsEntity = freezed,
  }) {
    return _then(_$DetailLessonStateImpl(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isFullQrCode: null == isFullQrCode
          ? _value.isFullQrCode
          : isFullQrCode // ignore: cast_nullable_to_non_nullable
              as bool,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int,
      lessonStudentsEntity: freezed == lessonStudentsEntity
          ? _value.lessonStudentsEntity
          : lessonStudentsEntity // ignore: cast_nullable_to_non_nullable
              as LessonStudentsEntity?,
    ));
  }
}

/// @nodoc

class _$DetailLessonStateImpl implements _DetailLessonState {
  const _$DetailLessonStateImpl(
      {this.asyncSnapshot = const AsyncSnapshot.nothing(),
      this.url = '',
      this.isFullQrCode = false,
      this.timer = 5,
      this.lessonStudentsEntity});

  @override
  @JsonKey()
  final AsyncSnapshot<dynamic> asyncSnapshot;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final bool isFullQrCode;
  @override
  @JsonKey()
  final int timer;
  @override
  final LessonStudentsEntity? lessonStudentsEntity;

  @override
  String toString() {
    return 'DetailLessonState(asyncSnapshot: $asyncSnapshot, url: $url, isFullQrCode: $isFullQrCode, timer: $timer, lessonStudentsEntity: $lessonStudentsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLessonStateImpl &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isFullQrCode, isFullQrCode) ||
                other.isFullQrCode == isFullQrCode) &&
            (identical(other.timer, timer) || other.timer == timer) &&
            (identical(other.lessonStudentsEntity, lessonStudentsEntity) ||
                other.lessonStudentsEntity == lessonStudentsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot, url, isFullQrCode,
      timer, lessonStudentsEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailLessonStateImplCopyWith<_$DetailLessonStateImpl> get copyWith =>
      __$$DetailLessonStateImplCopyWithImpl<_$DetailLessonStateImpl>(
          this, _$identity);
}

abstract class _DetailLessonState implements DetailLessonState {
  const factory _DetailLessonState(
          {final AsyncSnapshot<dynamic> asyncSnapshot,
          final String url,
          final bool isFullQrCode,
          final int timer,
          final LessonStudentsEntity? lessonStudentsEntity}) =
      _$DetailLessonStateImpl;

  @override
  AsyncSnapshot<dynamic> get asyncSnapshot;
  @override
  String get url;
  @override
  bool get isFullQrCode;
  @override
  int get timer;
  @override
  LessonStudentsEntity? get lessonStudentsEntity;
  @override
  @JsonKey(ignore: true)
  _$$DetailLessonStateImplCopyWith<_$DetailLessonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
