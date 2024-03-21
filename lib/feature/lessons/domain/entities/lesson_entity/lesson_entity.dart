// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_entity.freezed.dart';

part 'lesson_entity.g.dart';

@freezed
class LessonEntity with _$LessonEntity {
  const factory LessonEntity({
    @JsonKey(name: 'Id') required int id,
    @JsonKey(name: 'Name') String? name,
    @JsonKey(name: 'Date') String? date,
    @JsonKey(name: 'Auditorium') String? auditorium,
    @JsonKey(name: 'StartLesson') String? startLesson,
    @JsonKey(name: 'EndLesson') String? endLesson,
    @JsonKey(name: 'KindOfWork') String? kindOfWork,
    @JsonKey(name: 'LessonType') String? lessonType,
    @JsonKey(name: 'Group') required List<String> group,
  }) = _LessonEntity;

  factory LessonEntity.fromJson(Map<String, dynamic> json) =>
      _$LessonEntityFromJson(json);
}
