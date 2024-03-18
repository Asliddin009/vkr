import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';

abstract class LessonsRepo {
  /// получаем пары с startDate до endDate
  Future<List<LessonEntity>> getLessons(String? startDate, String? endDate);

  /// получаем детальную информацию( сколько студентов на этой паре и сам список студентов)
  Future<LessonEntity> getLesssonDetail(int id);

  ///Отправляем id пары получаеми url для qr code и количество отметившихся
  Future<String> getUrl(int lessonId);

  ///Добавление студентов на пару
  Future<String> addStudentInLesson(Map<String, dynamic> data);

  ///Получить студентов
  Future<List<UserEntity>> getStudents(int lessonId);
}
