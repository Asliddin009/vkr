import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';

abstract class LessonsRepo {
  /// получаем пары с startDate до endDate
  Future<List<LessonEntity>> getLessons(String? startDate, String? endDate);
}
