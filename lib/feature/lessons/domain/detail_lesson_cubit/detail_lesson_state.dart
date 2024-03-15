part of 'detail_lesson_cubit.dart';

@freezed
class DetailLessonState with _$DetailLessonState {
  const factory DetailLessonState(
      {@Default(AsyncSnapshot.nothing()) AsyncSnapshot asyncSnapshot,
      @Default('') String url,
      @Default(false) bool isFullQrCode}) = _DetailLessonState;
}
