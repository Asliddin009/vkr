// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QrCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? done,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingQrCodeState value) loading,
    required TResult Function(_DoneQrCodeState value) done,
    required TResult Function(_ErrorQrCodeState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQrCodeState value)? loading,
    TResult? Function(_DoneQrCodeState value)? done,
    TResult? Function(_ErrorQrCodeState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQrCodeState value)? loading,
    TResult Function(_DoneQrCodeState value)? done,
    TResult Function(_ErrorQrCodeState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeStateCopyWith<$Res> {
  factory $QrCodeStateCopyWith(
          QrCodeState value, $Res Function(QrCodeState) then) =
      _$QrCodeStateCopyWithImpl<$Res, QrCodeState>;
}

/// @nodoc
class _$QrCodeStateCopyWithImpl<$Res, $Val extends QrCodeState>
    implements $QrCodeStateCopyWith<$Res> {
  _$QrCodeStateCopyWithImpl(this._value, this._then);

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
    extends _$QrCodeStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'QrCodeState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QrCodeState.initial'));
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
    required TResult Function() done,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? done,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
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
    required TResult Function(_LoadingQrCodeState value) loading,
    required TResult Function(_DoneQrCodeState value) done,
    required TResult Function(_ErrorQrCodeState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQrCodeState value)? loading,
    TResult? Function(_DoneQrCodeState value)? done,
    TResult? Function(_ErrorQrCodeState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQrCodeState value)? loading,
    TResult Function(_DoneQrCodeState value)? done,
    TResult Function(_ErrorQrCodeState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QrCodeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingQrCodeStateImplCopyWith<$Res> {
  factory _$$LoadingQrCodeStateImplCopyWith(_$LoadingQrCodeStateImpl value,
          $Res Function(_$LoadingQrCodeStateImpl) then) =
      __$$LoadingQrCodeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingQrCodeStateImplCopyWithImpl<$Res>
    extends _$QrCodeStateCopyWithImpl<$Res, _$LoadingQrCodeStateImpl>
    implements _$$LoadingQrCodeStateImplCopyWith<$Res> {
  __$$LoadingQrCodeStateImplCopyWithImpl(_$LoadingQrCodeStateImpl _value,
      $Res Function(_$LoadingQrCodeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingQrCodeStateImpl
    with DiagnosticableTreeMixin
    implements _LoadingQrCodeState {
  const _$LoadingQrCodeStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCodeState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QrCodeState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingQrCodeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? done,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
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
    required TResult Function(_LoadingQrCodeState value) loading,
    required TResult Function(_DoneQrCodeState value) done,
    required TResult Function(_ErrorQrCodeState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQrCodeState value)? loading,
    TResult? Function(_DoneQrCodeState value)? done,
    TResult? Function(_ErrorQrCodeState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQrCodeState value)? loading,
    TResult Function(_DoneQrCodeState value)? done,
    TResult Function(_ErrorQrCodeState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingQrCodeState implements QrCodeState {
  const factory _LoadingQrCodeState() = _$LoadingQrCodeStateImpl;
}

/// @nodoc
abstract class _$$DoneQrCodeStateImplCopyWith<$Res> {
  factory _$$DoneQrCodeStateImplCopyWith(_$DoneQrCodeStateImpl value,
          $Res Function(_$DoneQrCodeStateImpl) then) =
      __$$DoneQrCodeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoneQrCodeStateImplCopyWithImpl<$Res>
    extends _$QrCodeStateCopyWithImpl<$Res, _$DoneQrCodeStateImpl>
    implements _$$DoneQrCodeStateImplCopyWith<$Res> {
  __$$DoneQrCodeStateImplCopyWithImpl(
      _$DoneQrCodeStateImpl _value, $Res Function(_$DoneQrCodeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoneQrCodeStateImpl
    with DiagnosticableTreeMixin
    implements _DoneQrCodeState {
  const _$DoneQrCodeStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCodeState.done()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'QrCodeState.done'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoneQrCodeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
    required TResult Function(String message) error,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? done,
    TResult? Function(String message)? error,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingQrCodeState value) loading,
    required TResult Function(_DoneQrCodeState value) done,
    required TResult Function(_ErrorQrCodeState value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQrCodeState value)? loading,
    TResult? Function(_DoneQrCodeState value)? done,
    TResult? Function(_ErrorQrCodeState value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQrCodeState value)? loading,
    TResult Function(_DoneQrCodeState value)? done,
    TResult Function(_ErrorQrCodeState value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _DoneQrCodeState implements QrCodeState {
  const factory _DoneQrCodeState() = _$DoneQrCodeStateImpl;
}

/// @nodoc
abstract class _$$ErrorQrCodeStateImplCopyWith<$Res> {
  factory _$$ErrorQrCodeStateImplCopyWith(_$ErrorQrCodeStateImpl value,
          $Res Function(_$ErrorQrCodeStateImpl) then) =
      __$$ErrorQrCodeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorQrCodeStateImplCopyWithImpl<$Res>
    extends _$QrCodeStateCopyWithImpl<$Res, _$ErrorQrCodeStateImpl>
    implements _$$ErrorQrCodeStateImplCopyWith<$Res> {
  __$$ErrorQrCodeStateImplCopyWithImpl(_$ErrorQrCodeStateImpl _value,
      $Res Function(_$ErrorQrCodeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorQrCodeStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorQrCodeStateImpl
    with DiagnosticableTreeMixin
    implements _ErrorQrCodeState {
  const _$ErrorQrCodeStateImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCodeState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QrCodeState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorQrCodeStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorQrCodeStateImplCopyWith<_$ErrorQrCodeStateImpl> get copyWith =>
      __$$ErrorQrCodeStateImplCopyWithImpl<_$ErrorQrCodeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() done,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? done,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? done,
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
    required TResult Function(_LoadingQrCodeState value) loading,
    required TResult Function(_DoneQrCodeState value) done,
    required TResult Function(_ErrorQrCodeState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQrCodeState value)? loading,
    TResult? Function(_DoneQrCodeState value)? done,
    TResult? Function(_ErrorQrCodeState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQrCodeState value)? loading,
    TResult Function(_DoneQrCodeState value)? done,
    TResult Function(_ErrorQrCodeState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorQrCodeState implements QrCodeState {
  const factory _ErrorQrCodeState(final String message) =
      _$ErrorQrCodeStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorQrCodeStateImplCopyWith<_$ErrorQrCodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
