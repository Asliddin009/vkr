import 'package:client_vkr/app/utils/utils.dart';
import 'package:client_vkr/feature/lessons/domain/entities/filter_entity/filter_entity.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/lessons/domain/lessons_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LessonsRepo)
@test
class MockLessonsRepo implements LessonsRepo {
  @override
  Future<List<String>> getGroupList() {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return [
        '1501б',
        '1101б',
        '1511б',
        '1521б',
        '1111б',
      ];
    });
  }

  @override
  Future<List<String>> getLessonTypeList() {
    return Future.delayed(const Duration(milliseconds: 300), () {
      return [
        'Практикум по программной инженерии',
        'Искусственные нейронные сети и обработка больших данных',
        'Машинное обучение'
      ];
    });
  }

  @override
  Future<List<LessonEntity>> getLessons(FilterEntity filterEntity) {
    return Future.delayed(const Duration(milliseconds: 300), () {
      final list = [
        const LessonEntity(
          id: 1,
          name: "Машинное обучение",
          group: ['1501б', '1101б'],
          date: '25.03.2024',
          startLesson: '16:25',
          endLesson: '17:45',
          contentTableOfLessonsName: 6,
          kindOfWork: 'Практика',
          auditorium: '4/333k',
        ),
        const LessonEntity(
          id: 3,
          name: "Машинное обучение",
          group: ['1501б', '1101б'],
          date: '25.03.2024',
          startLesson: '16:25',
          endLesson: '17:45',
          contentTableOfLessonsName: 6,
          kindOfWork: 'Практика',
          auditorium: '4/333k',
        ),
        const LessonEntity(
          id: 3,
          name: "Машинное обучение",
          group: ['1501б', '1101б'],
          date: '25.03.2024',
          startLesson: '16:25',
          endLesson: '17:45',
          contentTableOfLessonsName: 6,
          kindOfWork: 'Практика',
          auditorium: '4/333k',
        ),
        const LessonEntity(
          id: 2,
          name: "Практикум по программной инженерии",
          group: ['1511б'],
          date: '25.03.2024',
          startLesson: '16:25',
          endLesson: '17:45',
          contentTableOfLessonsName: 6,
          kindOfWork: 'Лекция',
          auditorium: '4/303',
        ),
        const LessonEntity(
          id: 3,
          name: "Искусственные нейронные сети и обработка больших данных",
          group: ['1322м'],
          date: '26.03.2024',
          contentTableOfLessonsName: 8,
          startLesson: '19:45',
          endLesson: '21:05',
          kindOfWork: 'Практика',
          auditorium: '4/428',
        ),
        const LessonEntity(
          id: 3,
          name: "Искусственные нейронные сети и обработка больших данных",
          group: ['1322м'],
          date: '26.03.2024',
          contentTableOfLessonsName: 8,
          startLesson: '19:45',
          endLesson: '21:05',
          kindOfWork: 'Практика',
          auditorium: '4/428',
        ),
        const LessonEntity(
          id: 3,
          name: "Искусственные нейронные сети и обработка больших данных",
          group: ['1322м'],
          date: '26.03.2024',
          contentTableOfLessonsName: 8,
          startLesson: '19:45',
          endLesson: '21:05',
          kindOfWork: 'Практика',
          auditorium: '4/428',
        ),
        const LessonEntity(
          id: 4,
          name: "Практикум по программной инженерии",
          group: ['1511б'],
          date: '27.03.2024',
          contentTableOfLessonsName: 1,
          startLesson: '8:15',
          endLesson: '9:35',
          kindOfWork: 'Лаборотрная работа',
          auditorium: '4/333k',
        ),
      ];
      if (filterEntity.listLessons.isEmpty && filterEntity.listGroups.isEmpty) {
        return list;
      }
      if (filterEntity.listLessons.isNotEmpty &&
          filterEntity.listGroups.isEmpty) {
        final filteredList = list
            .where((element) => filterEntity.listLessons.contains(element.name))
            .toList();
        return filteredList;
      }
      if (filterEntity.listLessons.isEmpty &&
          filterEntity.listGroups.isNotEmpty) {
        final filteredList = list
            .where((element) =>
                Utils.compareGroups(filterEntity.listGroups, element.group))
            .toList();
        return filteredList;
      }
      final filteredList = list
          .where((element) =>
              filterEntity.listLessons.contains(element.name) &&
              Utils.compareGroups(filterEntity.listGroups, element.group))
          .toList();
      return filteredList;
    });
  }
}
