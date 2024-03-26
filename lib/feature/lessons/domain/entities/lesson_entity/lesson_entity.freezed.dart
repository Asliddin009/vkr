// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LessonEntity _$LessonEntityFromJson(Map<String, dynamic> json) {
  return _LessonEntity.fromJson(json);
}

/// @nodoc
mixin _$LessonEntity {
  @JsonKey(name: 'Id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'Auditorium')
  String? get auditorium => throw _privateConstructorUsedError;
  @JsonKey(name: 'StartLesson')
  String? get startLesson => throw _privateConstructorUsedError;
  @JsonKey(name: 'EndLesson')
  String? get endLesson => throw _privateConstructorUsedError;
  @JsonKey(name: 'KindOfWork')
  String? get kindOfWork => throw _privateConstructorUsedError;
  @JsonKey(name: 'LessonType')
  String? get lessonType => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContentTableOfLessonsName')
  int? get contentTableOfLessonsName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Group')
  List<String> get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonEntityCopyWith<LessonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonEntityCopyWith<$Res> {
  factory $LessonEntityCopyWith(
          LessonEntity value, $Res Function(LessonEntity) then) =
      _$LessonEntityCopyWithImpl<$Res, LessonEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int id,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Date') String? date,
      @JsonKey(name: 'Auditorium') String? auditorium,
      @JsonKey(name: 'StartLesson') String? startLesson,
      @JsonKey(name: 'EndLesson') String? endLesson,
      @JsonKey(name: 'KindOfWork') String? kindOfWork,
      @JsonKey(name: 'LessonType') String? lessonType,
      @JsonKey(name: 'ContentTableOfLessonsName')
      int? contentTableOfLessonsName,
      @JsonKey(name: 'Group') List<String> group});
}

/// @nodoc
class _$LessonEntityCopyWithImpl<$Res, $Val extends LessonEntity>
    implements $LessonEntityCopyWith<$Res> {
  _$LessonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? date = freezed,
    Object? auditorium = freezed,
    Object? startLesson = freezed,
    Object? endLesson = freezed,
    Object? kindOfWork = freezed,
    Object? lessonType = freezed,
    Object? contentTableOfLessonsName = freezed,
    Object? group = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      auditorium: freezed == auditorium
          ? _value.auditorium
          : auditorium // ignore: cast_nullable_to_non_nullable
              as String?,
      startLesson: freezed == startLesson
          ? _value.startLesson
          : startLesson // ignore: cast_nullable_to_non_nullable
              as String?,
      endLesson: freezed == endLesson
          ? _value.endLesson
          : endLesson // ignore: cast_nullable_to_non_nullable
              as String?,
      kindOfWork: freezed == kindOfWork
          ? _value.kindOfWork
          : kindOfWork // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentTableOfLessonsName: freezed == contentTableOfLessonsName
          ? _value.contentTableOfLessonsName
          : contentTableOfLessonsName // ignore: cast_nullable_to_non_nullable
              as int?,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonEntityImplCopyWith<$Res>
    implements $LessonEntityCopyWith<$Res> {
  factory _$$LessonEntityImplCopyWith(
          _$LessonEntityImpl value, $Res Function(_$LessonEntityImpl) then) =
      __$$LessonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int id,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Date') String? date,
      @JsonKey(name: 'Auditorium') String? auditorium,
      @JsonKey(name: 'StartLesson') String? startLesson,
      @JsonKey(name: 'EndLesson') String? endLesson,
      @JsonKey(name: 'KindOfWork') String? kindOfWork,
      @JsonKey(name: 'LessonType') String? lessonType,
      @JsonKey(name: 'ContentTableOfLessonsName')
      int? contentTableOfLessonsName,
      @JsonKey(name: 'Group') List<String> group});
}

/// @nodoc
class __$$LessonEntityImplCopyWithImpl<$Res>
    extends _$LessonEntityCopyWithImpl<$Res, _$LessonEntityImpl>
    implements _$$LessonEntityImplCopyWith<$Res> {
  __$$LessonEntityImplCopyWithImpl(
      _$LessonEntityImpl _value, $Res Function(_$LessonEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? date = freezed,
    Object? auditorium = freezed,
    Object? startLesson = freezed,
    Object? endLesson = freezed,
    Object? kindOfWork = freezed,
    Object? lessonType = freezed,
    Object? contentTableOfLessonsName = freezed,
    Object? group = null,
  }) {
    return _then(_$LessonEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      auditorium: freezed == auditorium
          ? _value.auditorium
          : auditorium // ignore: cast_nullable_to_non_nullable
              as String?,
      startLesson: freezed == startLesson
          ? _value.startLesson
          : startLesson // ignore: cast_nullable_to_non_nullable
              as String?,
      endLesson: freezed == endLesson
          ? _value.endLesson
          : endLesson // ignore: cast_nullable_to_non_nullable
              as String?,
      kindOfWork: freezed == kindOfWork
          ? _value.kindOfWork
          : kindOfWork // ignore: cast_nullable_to_non_nullable
              as String?,
      lessonType: freezed == lessonType
          ? _value.lessonType
          : lessonType // ignore: cast_nullable_to_non_nullable
              as String?,
      contentTableOfLessonsName: freezed == contentTableOfLessonsName
          ? _value.contentTableOfLessonsName
          : contentTableOfLessonsName // ignore: cast_nullable_to_non_nullable
              as int?,
      group: null == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonEntityImpl implements _LessonEntity {
  const _$LessonEntityImpl(
      {@JsonKey(name: 'Id') required this.id,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Date') this.date,
      @JsonKey(name: 'Auditorium') this.auditorium,
      @JsonKey(name: 'StartLesson') this.startLesson,
      @JsonKey(name: 'EndLesson') this.endLesson,
      @JsonKey(name: 'KindOfWork') this.kindOfWork,
      @JsonKey(name: 'LessonType') this.lessonType,
      @JsonKey(name: 'ContentTableOfLessonsName')
      this.contentTableOfLessonsName,
      @JsonKey(name: 'Group') required final List<String> group})
      : _group = group;

  factory _$LessonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonEntityImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int id;
  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Date')
  final String? date;
  @override
  @JsonKey(name: 'Auditorium')
  final String? auditorium;
  @override
  @JsonKey(name: 'StartLesson')
  final String? startLesson;
  @override
  @JsonKey(name: 'EndLesson')
  final String? endLesson;
  @override
  @JsonKey(name: 'KindOfWork')
  final String? kindOfWork;
  @override
  @JsonKey(name: 'LessonType')
  final String? lessonType;
  @override
  @JsonKey(name: 'ContentTableOfLessonsName')
  final int? contentTableOfLessonsName;
  final List<String> _group;
  @override
  @JsonKey(name: 'Group')
  List<String> get group {
    if (_group is EqualUnmodifiableListView) return _group;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_group);
  }

  @override
  String toString() {
    return 'LessonEntity(id: $id, name: $name, date: $date, auditorium: $auditorium, startLesson: $startLesson, endLesson: $endLesson, kindOfWork: $kindOfWork, lessonType: $lessonType, contentTableOfLessonsName: $contentTableOfLessonsName, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.auditorium, auditorium) ||
                other.auditorium == auditorium) &&
            (identical(other.startLesson, startLesson) ||
                other.startLesson == startLesson) &&
            (identical(other.endLesson, endLesson) ||
                other.endLesson == endLesson) &&
            (identical(other.kindOfWork, kindOfWork) ||
                other.kindOfWork == kindOfWork) &&
            (identical(other.lessonType, lessonType) ||
                other.lessonType == lessonType) &&
            (identical(other.contentTableOfLessonsName,
                    contentTableOfLessonsName) ||
                other.contentTableOfLessonsName == contentTableOfLessonsName) &&
            const DeepCollectionEquality().equals(other._group, _group));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      date,
      auditorium,
      startLesson,
      endLesson,
      kindOfWork,
      lessonType,
      contentTableOfLessonsName,
      const DeepCollectionEquality().hash(_group));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonEntityImplCopyWith<_$LessonEntityImpl> get copyWith =>
      __$$LessonEntityImplCopyWithImpl<_$LessonEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonEntityImplToJson(
      this,
    );
  }
}

abstract class _LessonEntity implements LessonEntity {
  const factory _LessonEntity(
          {@JsonKey(name: 'Id') required final int id,
          @JsonKey(name: 'Name') final String? name,
          @JsonKey(name: 'Date') final String? date,
          @JsonKey(name: 'Auditorium') final String? auditorium,
          @JsonKey(name: 'StartLesson') final String? startLesson,
          @JsonKey(name: 'EndLesson') final String? endLesson,
          @JsonKey(name: 'KindOfWork') final String? kindOfWork,
          @JsonKey(name: 'LessonType') final String? lessonType,
          @JsonKey(name: 'ContentTableOfLessonsName')
          final int? contentTableOfLessonsName,
          @JsonKey(name: 'Group') required final List<String> group}) =
      _$LessonEntityImpl;

  factory _LessonEntity.fromJson(Map<String, dynamic> json) =
      _$LessonEntityImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  int get id;
  @override
  @JsonKey(name: 'Name')
  String? get name;
  @override
  @JsonKey(name: 'Date')
  String? get date;
  @override
  @JsonKey(name: 'Auditorium')
  String? get auditorium;
  @override
  @JsonKey(name: 'StartLesson')
  String? get startLesson;
  @override
  @JsonKey(name: 'EndLesson')
  String? get endLesson;
  @override
  @JsonKey(name: 'KindOfWork')
  String? get kindOfWork;
  @override
  @JsonKey(name: 'LessonType')
  String? get lessonType;
  @override
  @JsonKey(name: 'ContentTableOfLessonsName')
  int? get contentTableOfLessonsName;
  @override
  @JsonKey(name: 'Group')
  List<String> get group;
  @override
  @JsonKey(ignore: true)
  _$$LessonEntityImplCopyWith<_$LessonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
