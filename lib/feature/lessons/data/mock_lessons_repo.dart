import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/lessons/domain/lessons_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LessonsRepo)
@test
class MockLessonsRepo implements LessonsRepo {
  @override
  Future<List<LessonEntity>> getLessons(String? startDate, String? endDate) {
    return Future.delayed(const Duration(milliseconds: 500), () {
      return [
        const LessonEntity(
          id: 1,
          name: "Машинное обучение",
          group: ['1501б', '1101б'],
          date: '25.03.2024',
          startLesson: '16:25',
          endLesson: '17:45',
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
          kindOfWork: 'Лекция',
          auditorium: '4/303',
        ),
        const LessonEntity(
          id: 3,
          name: "Искусственные нейронные сети и обработка больших данных",
          group: ['1322м'],
          date: '26.03.2024',
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
          startLesson: '8:15',
          endLesson: '9:35',
          kindOfWork: 'Лаборотрная работа',
          auditorium: '4/333k',
        )
      ];
    });
  }

  @override
  Future<List<String>> getGroupList() {
    return Future.delayed(const Duration(seconds: 1), () {
      return [
        '1501',
        '1101',
        '1511',
        '1521',
        '1111',
      ];
    });
  }

  @override
  Future<List<String>> getLessonTypeList() {
    return Future.delayed(const Duration(seconds: 1), () {
      return [
        'Практикум по программной инженерии',
        'Искусственные нейронные сети и обработка больших данных',
        'Машинное обучение'
      ];
    });
  }

  @override
  Future<List<LessonEntity>> getLessonsWithFilter(
      String? startDate, String? endDate, data) {
    return Future.delayed(const Duration(milliseconds: 500), () {
      return [
        const LessonEntity(
          id: 3,
          name: "Искусственные нейронные сети и обработка больших данных",
          group: ['1322м'],
          date: '26.03.2024',
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
          startLesson: '8:15',
          endLesson: '9:35',
          kindOfWork: 'Лаборотрная работа',
          auditorium: '4/333k',
        )
      ];
    });
  }
}
