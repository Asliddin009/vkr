// ignore_for_file: invalid_annotation_target
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_student_entity.freezed.dart';

part 'lesson_student_entity.g.dart';

@freezed
class LessonStudentsEntity with _$LessonStudentsEntity {
  const factory LessonStudentsEntity({
    required int totalCountStudent,
    required int makeCountStudent,
    @Default([]) List<UserEntity> listStudent,
  }) = _LessonStudentsEntity;

  factory LessonStudentsEntity.fromJson(Map<String, dynamic> json) =>
      _$LessonStudentsEntityFromJson(json);
}
