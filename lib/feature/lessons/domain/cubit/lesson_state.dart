part of 'lesson_cubit.dart';

@freezed
class LessonState with _$LessonState {
  const factory LessonState({
    @Default(AsyncSnapshot.nothing()) AsyncSnapshot asyncSnapshot,
    required List<LessonEntity> listLesson,
    FilterEntity? filterEntity,
    @Default([]) List<String> listLessonType,
    @Default([]) List<String> listGroup,
  }) = _LessonState;
}
