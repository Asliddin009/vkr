import 'package:client_vkr/feature/lessons/domain/entities/filter_entity/filter_entity.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';

abstract class LessonsRepo {
  Future<List<LessonEntity>> getLessons(FilterEntity filterEntity);

  Future<List<String>> getGroupList();

  Future<List<String>> getLessonTypeList();
}
