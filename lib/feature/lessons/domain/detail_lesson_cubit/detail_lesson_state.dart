part of 'detail_lesson_cubit.dart';

@freezed
class DetailLessonState with _$DetailLessonState {
  const factory DetailLessonState({
    @Default(AsyncSnapshot.nothing()) AsyncSnapshot asyncSnapshot,
    @Default('') String url,
    @Default(false) bool isFullQrCode,
    @Default(5) int timer,
    @Default(BodyState.init) BodyState bodyState,
    LessonStudentsEntity? lessonStudentsEntity,
  }) = _DetailLessonState;
}

enum BodyState {
  qrCode,
  list,
  addUser,
  init,
}
