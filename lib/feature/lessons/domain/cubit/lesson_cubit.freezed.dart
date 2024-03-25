// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LessonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LessonEntity> listLesson, String dateStart)
        done,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LessonEntity> listLesson, String dateStart)? done,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LessonEntity> listLesson, String dateStart)? done,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLessonState value) loading,
    required TResult Function(_DoneLessonState value) done,
    required TResult Function(_ErrorLessonState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLessonState value)? loading,
    TResult? Function(_DoneLessonState value)? done,
    TResult? Function(_ErrorLessonState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLessonState value)? loading,
    TResult Function(_DoneLessonState value)? done,
    TResult Function(_ErrorLessonState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStateCopyWith<$Res> {
  factory $LessonStateCopyWith(
          LessonState value, $Res Function(LessonState) then) =
      _$LessonStateCopyWithImpl<$Res, LessonState>;
}

/// @nodoc
class _$LessonStateCopyWithImpl<$Res, $Val extends LessonState>
    implements $LessonStateCopyWith<$Res> {
  _$LessonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LessonState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LessonEntity> listLesson, String dateStart)
        done,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LessonEntity> listLesson, String dateStart)? done,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LessonEntity> listLesson, String dateStart)? done,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLessonState value) loading,
    required TResult Function(_DoneLessonState value) done,
    required TResult Function(_ErrorLessonState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLessonState value)? loading,
    TResult? Function(_DoneLessonState value)? done,
    TResult? Function(_ErrorLessonState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLessonState value)? loading,
    TResult Function(_DoneLessonState value)? done,
    TResult Function(_ErrorLessonState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LessonState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingLessonStateImplCopyWith<$Res> {
  factory _$$LoadingLessonStateImplCopyWith(_$LoadingLessonStateImpl value,
          $Res Function(_$LoadingLessonStateImpl) then) =
      __$$LoadingLessonStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLessonStateImplCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$LoadingLessonStateImpl>
    implements _$$LoadingLessonStateImplCopyWith<$Res> {
  __$$LoadingLessonStateImplCopyWithImpl(_$LoadingLessonStateImpl _value,
      $Res Function(_$LoadingLessonStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingLessonStateImpl
    with DiagnosticableTreeMixin
    implements _LoadingLessonState {
  const _$LoadingLessonStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LessonState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLessonStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LessonEntity> listLesson, String dateStart)
        done,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LessonEntity> listLesson, String dateStart)? done,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LessonEntity> listLesson, String dateStart)? done,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLessonState value) loading,
    required TResult Function(_DoneLessonState value) done,
    required TResult Function(_ErrorLessonState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLessonState value)? loading,
    TResult? Function(_DoneLessonState value)? done,
    TResult? Function(_ErrorLessonState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLessonState value)? loading,
    TResult Function(_DoneLessonState value)? done,
    TResult Function(_ErrorLessonState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingLessonState implements LessonState {
  const factory _LoadingLessonState() = _$LoadingLessonStateImpl;
}

/// @nodoc
abstract class _$$DoneLessonStateImplCopyWith<$Res> {
  factory _$$DoneLessonStateImplCopyWith(_$DoneLessonStateImpl value,
          $Res Function(_$DoneLessonStateImpl) then) =
      __$$DoneLessonStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LessonEntity> listLesson, String dateStart});
}

/// @nodoc
class __$$DoneLessonStateImplCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$DoneLessonStateImpl>
    implements _$$DoneLessonStateImplCopyWith<$Res> {
  __$$DoneLessonStateImplCopyWithImpl(
      _$DoneLessonStateImpl _value, $Res Function(_$DoneLessonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listLesson = null,
    Object? dateStart = null,
  }) {
    return _then(_$DoneLessonStateImpl(
      null == listLesson
          ? _value._listLesson
          : listLesson // ignore: cast_nullable_to_non_nullable
              as List<LessonEntity>,
      null == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DoneLessonStateImpl
    with DiagnosticableTreeMixin
    implements _DoneLessonState {
  const _$DoneLessonStateImpl(
      final List<LessonEntity> listLesson, this.dateStart)
      : _listLesson = listLesson;

  final List<LessonEntity> _listLesson;
  @override
  List<LessonEntity> get listLesson {
    if (_listLesson is EqualUnmodifiableListView) return _listLesson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listLesson);
  }

  @override
  final String dateStart;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.done(listLesson: $listLesson, dateStart: $dateStart)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonState.done'))
      ..add(DiagnosticsProperty('listLesson', listLesson))
      ..add(DiagnosticsProperty('dateStart', dateStart));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneLessonStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listLesson, _listLesson) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listLesson), dateStart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneLessonStateImplCopyWith<_$DoneLessonStateImpl> get copyWith =>
      __$$DoneLessonStateImplCopyWithImpl<_$DoneLessonStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LessonEntity> listLesson, String dateStart)
        done,
    required TResult Function(String message) error,
  }) {
    return done(listLesson, dateStart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LessonEntity> listLesson, String dateStart)? done,
    TResult? Function(String message)? error,
  }) {
    return done?.call(listLesson, dateStart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LessonEntity> listLesson, String dateStart)? done,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(listLesson, dateStart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLessonState value) loading,
    required TResult Function(_DoneLessonState value) done,
    required TResult Function(_ErrorLessonState value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLessonState value)? loading,
    TResult? Function(_DoneLessonState value)? done,
    TResult? Function(_ErrorLessonState value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLessonState value)? loading,
    TResult Function(_DoneLessonState value)? done,
    TResult Function(_ErrorLessonState value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _DoneLessonState implements LessonState {
  const factory _DoneLessonState(
          final List<LessonEntity> listLesson, final String dateStart) =
      _$DoneLessonStateImpl;

  List<LessonEntity> get listLesson;
  String get dateStart;
  @JsonKey(ignore: true)
  _$$DoneLessonStateImplCopyWith<_$DoneLessonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorLessonStateImplCopyWith<$Res> {
  factory _$$ErrorLessonStateImplCopyWith(_$ErrorLessonStateImpl value,
          $Res Function(_$ErrorLessonStateImpl) then) =
      __$$ErrorLessonStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorLessonStateImplCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$ErrorLessonStateImpl>
    implements _$$ErrorLessonStateImplCopyWith<$Res> {
  __$$ErrorLessonStateImplCopyWithImpl(_$ErrorLessonStateImpl _value,
      $Res Function(_$ErrorLessonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorLessonStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLessonStateImpl
    with DiagnosticableTreeMixin
    implements _ErrorLessonState {
  const _$ErrorLessonStateImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLessonStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLessonStateImplCopyWith<_$ErrorLessonStateImpl> get copyWith =>
      __$$ErrorLessonStateImplCopyWithImpl<_$ErrorLessonStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LessonEntity> listLesson, String dateStart)
        done,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LessonEntity> listLesson, String dateStart)? done,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LessonEntity> listLesson, String dateStart)? done,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingLessonState value) loading,
    required TResult Function(_DoneLessonState value) done,
    required TResult Function(_ErrorLessonState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingLessonState value)? loading,
    TResult? Function(_DoneLessonState value)? done,
    TResult? Function(_ErrorLessonState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingLessonState value)? loading,
    TResult Function(_DoneLessonState value)? done,
    TResult Function(_ErrorLessonState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorLessonState implements LessonState {
  const factory _ErrorLessonState(final String message) =
      _$ErrorLessonStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorLessonStateImplCopyWith<_$ErrorLessonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
