// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_code_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QrCodeData _$QrCodeDataFromJson(Map<String, dynamic> json) {
  return _QrCodeData.fromJson(json);
}

/// @nodoc
mixin _$QrCodeData {
  @JsonKey(name: 'Url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'CountStudent')
  int get countStudent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QrCodeDataCopyWith<QrCodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeDataCopyWith<$Res> {
  factory $QrCodeDataCopyWith(
          QrCodeData value, $Res Function(QrCodeData) then) =
      _$QrCodeDataCopyWithImpl<$Res, QrCodeData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Url') String url,
      @JsonKey(name: 'CountStudent') int countStudent});
}

/// @nodoc
class _$QrCodeDataCopyWithImpl<$Res, $Val extends QrCodeData>
    implements $QrCodeDataCopyWith<$Res> {
  _$QrCodeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? countStudent = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      countStudent: null == countStudent
          ? _value.countStudent
          : countStudent // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QrCodeDataImplCopyWith<$Res>
    implements $QrCodeDataCopyWith<$Res> {
  factory _$$QrCodeDataImplCopyWith(
          _$QrCodeDataImpl value, $Res Function(_$QrCodeDataImpl) then) =
      __$$QrCodeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Url') String url,
      @JsonKey(name: 'CountStudent') int countStudent});
}

/// @nodoc
class __$$QrCodeDataImplCopyWithImpl<$Res>
    extends _$QrCodeDataCopyWithImpl<$Res, _$QrCodeDataImpl>
    implements _$$QrCodeDataImplCopyWith<$Res> {
  __$$QrCodeDataImplCopyWithImpl(
      _$QrCodeDataImpl _value, $Res Function(_$QrCodeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? countStudent = null,
  }) {
    return _then(_$QrCodeDataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      countStudent: null == countStudent
          ? _value.countStudent
          : countStudent // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QrCodeDataImpl implements _QrCodeData {
  const _$QrCodeDataImpl(
      {@JsonKey(name: 'Url') required this.url,
      @JsonKey(name: 'CountStudent') required this.countStudent});

  factory _$QrCodeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$QrCodeDataImplFromJson(json);

  @override
  @JsonKey(name: 'Url')
  final String url;
  @override
  @JsonKey(name: 'CountStudent')
  final int countStudent;

  @override
  String toString() {
    return 'QrCodeData(url: $url, countStudent: $countStudent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCodeDataImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.countStudent, countStudent) ||
                other.countStudent == countStudent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, countStudent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QrCodeDataImplCopyWith<_$QrCodeDataImpl> get copyWith =>
      __$$QrCodeDataImplCopyWithImpl<_$QrCodeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QrCodeDataImplToJson(
      this,
    );
  }
}

abstract class _QrCodeData implements QrCodeData {
  const factory _QrCodeData(
          {@JsonKey(name: 'Url') required final String url,
          @JsonKey(name: 'CountStudent') required final int countStudent}) =
      _$QrCodeDataImpl;

  factory _QrCodeData.fromJson(Map<String, dynamic> json) =
      _$QrCodeDataImpl.fromJson;

  @override
  @JsonKey(name: 'Url')
  String get url;
  @override
  @JsonKey(name: 'CountStudent')
  int get countStudent;
  @override
  @JsonKey(ignore: true)
  _$$QrCodeDataImplCopyWith<_$QrCodeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
