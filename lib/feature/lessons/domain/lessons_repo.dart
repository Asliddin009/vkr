import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';

abstract class LessonsRepo {
  Future<List<LessonEntity>> getLessons(String? startDate, String? endDate);
  Future<LessonEntity> getLesssonDetail(int id);

  // 1)Вариант

  ///начать поток на получения url
  Stream<String> startListenQrCode(int lessonId);

  ///запрос чтобы закрыть поток
  Stream<dynamic> finishListenQrCode(int lessonId);

  // 2) Вариант
  Future<String> getUrl(int lessonId);

  ///запрос чтобы отметиться
  Future<String> sendMark(int lessonId, int qrCodeId);
}
