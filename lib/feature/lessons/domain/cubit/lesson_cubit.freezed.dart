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
  AsyncSnapshot<dynamic> get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<LessonEntity> get listLesson => throw _privateConstructorUsedError;
  FilterEntity? get filterEntity => throw _privateConstructorUsedError;
  List<String> get listLessonType => throw _privateConstructorUsedError;
  List<String> get listGroup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonStateCopyWith<LessonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStateCopyWith<$Res> {
  factory $LessonStateCopyWith(
          LessonState value, $Res Function(LessonState) then) =
      _$LessonStateCopyWithImpl<$Res, LessonState>;
  @useResult
  $Res call(
      {AsyncSnapshot<dynamic> asyncSnapshot,
      List<LessonEntity> listLesson,
      FilterEntity? filterEntity,
      List<String> listLessonType,
      List<String> listGroup});
}

/// @nodoc
class _$LessonStateCopyWithImpl<$Res, $Val extends LessonState>
    implements $LessonStateCopyWith<$Res> {
  _$LessonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? listLesson = null,
    Object? filterEntity = freezed,
    Object? listLessonType = null,
    Object? listGroup = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      listLesson: null == listLesson
          ? _value.listLesson
          : listLesson // ignore: cast_nullable_to_non_nullable
              as List<LessonEntity>,
      filterEntity: freezed == filterEntity
          ? _value.filterEntity
          : filterEntity // ignore: cast_nullable_to_non_nullable
              as FilterEntity?,
      listLessonType: null == listLessonType
          ? _value.listLessonType
          : listLessonType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listGroup: null == listGroup
          ? _value.listGroup
          : listGroup // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonStateImplCopyWith<$Res>
    implements $LessonStateCopyWith<$Res> {
  factory _$$LessonStateImplCopyWith(
          _$LessonStateImpl value, $Res Function(_$LessonStateImpl) then) =
      __$$LessonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncSnapshot<dynamic> asyncSnapshot,
      List<LessonEntity> listLesson,
      FilterEntity? filterEntity,
      List<String> listLessonType,
      List<String> listGroup});
}

/// @nodoc
class __$$LessonStateImplCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$LessonStateImpl>
    implements _$$LessonStateImplCopyWith<$Res> {
  __$$LessonStateImplCopyWithImpl(
      _$LessonStateImpl _value, $Res Function(_$LessonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = null,
    Object? listLesson = null,
    Object? filterEntity = freezed,
    Object? listLessonType = null,
    Object? listGroup = null,
  }) {
    return _then(_$LessonStateImpl(
      asyncSnapshot: null == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      listLesson: null == listLesson
          ? _value._listLesson
          : listLesson // ignore: cast_nullable_to_non_nullable
              as List<LessonEntity>,
      filterEntity: freezed == filterEntity
          ? _value.filterEntity
          : filterEntity // ignore: cast_nullable_to_non_nullable
              as FilterEntity?,
      listLessonType: null == listLessonType
          ? _value._listLessonType
          : listLessonType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listGroup: null == listGroup
          ? _value._listGroup
          : listGroup // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$LessonStateImpl with DiagnosticableTreeMixin implements _LessonState {
  const _$LessonStateImpl(
      {this.asyncSnapshot = const AsyncSnapshot.nothing(),
      required final List<LessonEntity> listLesson,
      this.filterEntity,
      final List<String> listLessonType = const [],
      final List<String> listGroup = const []})
      : _listLesson = listLesson,
        _listLessonType = listLessonType,
        _listGroup = listGroup;

  @override
  @JsonKey()
  final AsyncSnapshot<dynamic> asyncSnapshot;
  final List<LessonEntity> _listLesson;
  @override
  List<LessonEntity> get listLesson {
    if (_listLesson is EqualUnmodifiableListView) return _listLesson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listLesson);
  }

  @override
  final FilterEntity? filterEntity;
  final List<String> _listLessonType;
  @override
  @JsonKey()
  List<String> get listLessonType {
    if (_listLessonType is EqualUnmodifiableListView) return _listLessonType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listLessonType);
  }

  final List<String> _listGroup;
  @override
  @JsonKey()
  List<String> get listGroup {
    if (_listGroup is EqualUnmodifiableListView) return _listGroup;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listGroup);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LessonState(asyncSnapshot: $asyncSnapshot, listLesson: $listLesson, filterEntity: $filterEntity, listLessonType: $listLessonType, listGroup: $listGroup)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LessonState'))
      ..add(DiagnosticsProperty('asyncSnapshot', asyncSnapshot))
      ..add(DiagnosticsProperty('listLesson', listLesson))
      ..add(DiagnosticsProperty('filterEntity', filterEntity))
      ..add(DiagnosticsProperty('listLessonType', listLessonType))
      ..add(DiagnosticsProperty('listGroup', listGroup));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonStateImpl &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality()
                .equals(other._listLesson, _listLesson) &&
            (identical(other.filterEntity, filterEntity) ||
                other.filterEntity == filterEntity) &&
            const DeepCollectionEquality()
                .equals(other._listLessonType, _listLessonType) &&
            const DeepCollectionEquality()
                .equals(other._listGroup, _listGroup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      asyncSnapshot,
      const DeepCollectionEquality().hash(_listLesson),
      filterEntity,
      const DeepCollectionEquality().hash(_listLessonType),
      const DeepCollectionEquality().hash(_listGroup));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonStateImplCopyWith<_$LessonStateImpl> get copyWith =>
      __$$LessonStateImplCopyWithImpl<_$LessonStateImpl>(this, _$identity);
}

abstract class _LessonState implements LessonState {
  const factory _LessonState(
      {final AsyncSnapshot<dynamic> asyncSnapshot,
      required final List<LessonEntity> listLesson,
      final FilterEntity? filterEntity,
      final List<String> listLessonType,
      final List<String> listGroup}) = _$LessonStateImpl;

  @override
  AsyncSnapshot<dynamic> get asyncSnapshot;
  @override
  List<LessonEntity> get listLesson;
  @override
  FilterEntity? get filterEntity;
  @override
  List<String> get listLessonType;
  @override
  List<String> get listGroup;
  @override
  @JsonKey(ignore: true)
  _$$LessonStateImplCopyWith<_$LessonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
