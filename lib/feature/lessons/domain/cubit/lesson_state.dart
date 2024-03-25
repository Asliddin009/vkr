part of 'lesson_cubit.dart';

@freezed
class LessonState with _$LessonState {
  const factory LessonState.initial() = _Initial;
  const factory LessonState.loading() = _LoadingLessonState;
  const factory LessonState.done(
      List<LessonEntity> listLesson, String dateStart) = _DoneLessonState;
  const factory LessonState.error(String message) = _ErrorLessonState;
}
