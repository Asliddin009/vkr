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
  QrCodeData get qrCodeData => throw _privateConstructorUsedError;
  bool get isFullQrCode => throw _privateConstructorUsedError;
  int get timer => throw _privateConstructorUsedError;
  List<UserEntity> get list => throw _privateConstructorUsedError;

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
      QrCodeData qrCodeData,
      bool isFullQrCode,
      int timer,
      List<UserEntity> list});

  $QrCodeDataCopyWith<$Res> get qrCodeData;
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
    Object? qrCodeData = null,
    Object? isFullQrCode = null,
    Object? timer = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      qrCodeData: null == qrCodeData
          ? _value.qrCodeData
          : qrCodeData // ignore: cast_nullable_to_non_nullable
              as QrCodeData,
      isFullQrCode: null == isFullQrCode
          ? _value.isFullQrCode
          : isFullQrCode // ignore: cast_nullable_to_non_nullable
              as bool,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QrCodeDataCopyWith<$Res> get qrCodeData {
    return $QrCodeDataCopyWith<$Res>(_value.qrCodeData, (value) {
      return _then(_value.copyWith(qrCodeData: value) as $Val);
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
      QrCodeData qrCodeData,
      bool isFullQrCode,
      int timer,
      List<UserEntity> list});

  @override
  $QrCodeDataCopyWith<$Res> get qrCodeData;
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
    Object? qrCodeData = null,
    Object? isFullQrCode = null,
    Object? timer = null,
    Object? list = null,
  }) {
    return _then(_$DetailLessonStateImpl(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      qrCodeData: null == qrCodeData
          ? _value.qrCodeData
          : qrCodeData // ignore: cast_nullable_to_non_nullable
              as QrCodeData,
      isFullQrCode: null == isFullQrCode
          ? _value.isFullQrCode
          : isFullQrCode // ignore: cast_nullable_to_non_nullable
              as bool,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc

class _$DetailLessonStateImpl implements _DetailLessonState {
  const _$DetailLessonStateImpl(
      {this.asyncSnapshot = const AsyncSnapshot.nothing(),
      this.qrCodeData = const QrCodeData(url: '', countStudent: 0),
      this.isFullQrCode = false,
      this.timer = 5,
      final List<UserEntity> list = const []})
      : _list = list;

  @override
  @JsonKey()
  final AsyncSnapshot<dynamic> asyncSnapshot;
  @override
  @JsonKey()
  final QrCodeData qrCodeData;
  @override
  @JsonKey()
  final bool isFullQrCode;
  @override
  @JsonKey()
  final int timer;
  final List<UserEntity> _list;
  @override
  @JsonKey()
  List<UserEntity> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'DetailLessonState(asyncSnapshot: $asyncSnapshot, qrCodeData: $qrCodeData, isFullQrCode: $isFullQrCode, timer: $timer, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLessonStateImpl &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            (identical(other.qrCodeData, qrCodeData) ||
                other.qrCodeData == qrCodeData) &&
            (identical(other.isFullQrCode, isFullQrCode) ||
                other.isFullQrCode == isFullQrCode) &&
            (identical(other.timer, timer) || other.timer == timer) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot, qrCodeData,
      isFullQrCode, timer, const DeepCollectionEquality().hash(_list));

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
      final QrCodeData qrCodeData,
      final bool isFullQrCode,
      final int timer,
      final List<UserEntity> list}) = _$DetailLessonStateImpl;

  @override
  AsyncSnapshot<dynamic> get asyncSnapshot;
  @override
  QrCodeData get qrCodeData;
  @override
  bool get isFullQrCode;
  @override
  int get timer;
  @override
  List<UserEntity> get list;
  @override
  @JsonKey(ignore: true)
  _$$DetailLessonStateImplCopyWith<_$DetailLessonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
