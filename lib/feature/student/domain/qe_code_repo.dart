abstract interface class QrCodeRepo {
  ///запрос чтобы отметиться
  Future<String> sendMark(String lessonId, String qrCodeId);
}
