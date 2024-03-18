part of 'detail_lesson_cubit.dart';

@freezed
class DetailLessonState with _$DetailLessonState {
  const factory DetailLessonState({
    @Default(AsyncSnapshot.nothing()) AsyncSnapshot asyncSnapshot,
    @Default(QrCodeData(url: '', countStudent: 0)) QrCodeData qrCodeData,
    @Default(false) bool isFullQrCode,
    @Default(5) int timer,
    @Default([]) List<UserEntity> list,
  }) = _DetailLessonState;
}
