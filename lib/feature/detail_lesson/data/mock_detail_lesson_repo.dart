import 'dart:math';

import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/detail_lesson/domain/detail_lesson_repo.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/detail_lesson/domain/entity/qr_code_data/lesson_student_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DetailLessonRepo)
@test
class MockLessonsRepo implements DetailLessonRepo {
  @override
  Future<LessonEntity> getLesssonDetail(int id) {
    return Future.delayed(const Duration(milliseconds: 100), () {
      return const LessonEntity(
          id: 1,
          name: "машинное обучение",
          group: ['1501б', '1101б'],
          date: '28.03.2024');
    });
  }

  @override
  Future<String> getUrl(int lessonId) {
    const list = [
      'http://0.0.0.0:8001/api/qr/control/:qrcode/visit?lessonId=1&qrCodeId=1',
      'http://0.0.0.0:8001/api/qr/control/:qrcode/visit?lessonId=1&qrCodeId=2',
      'http://0.0.0.0:8001/api/qr/control/:qrcode/visit?lessonId=1&qrCodeId=3',
      'http://0.0.0.0:8001/api/qr/control/:qrcode/visit?lessonId=1&qrCodeId=4',
      'http://0.0.0.0:8001/api/qr/control/:qrcode/visit?lessonId=1&qrCodeId=5',
    ];
    return Future.delayed(const Duration(seconds: 1), () {
      return list[Random().nextInt(list.length)];
    });
  }

  @override
  Future<String> addStudentInLesson(Map<String, dynamic> data) {
    if (data.isEmpty) throw Exception('не получилось добавить');
    return Future.delayed(
        const Duration(seconds: 1), () => 'Студенты добавлены на пару');
  }

  @override
  Future<LessonStudentsEntity> getStudents(int lessonId) {
    return Future.delayed(const Duration(seconds: 1), () {
      return const LessonStudentsEntity(
          makeCountStudent: 3,
          totalCountStudent: 6,
          listStudent: [
            UserEntity(
                name: 'Сайдалиев Аслиддин Джамалиддинович',
                attendanceStatus: AttendanceStatus.present),
            UserEntity(
                name: 'Громов Василий Валерьевич',
                attendanceStatus: AttendanceStatus.excused),
            UserEntity(name: 'Куксин Иван Николаевич'),
            UserEntity(name: 'Смирнов Никита Максимович'),
            UserEntity(name: 'Васильева Екатерина Алексеевна'),
            UserEntity(name: 'Иванова София Сергеевна'),
            UserEntity(name: 'Соколов Алексей Владимирович'),
            UserEntity(name: 'Попова Мария Васильевна'),
            UserEntity(name: 'Лебедев Константин Михайлович'),
            UserEntity(name: 'Козлов Виктор Петрович'),
            UserEntity(name: 'Новикова Дарья Александровна'),
            UserEntity(name: 'Морозов Роман Анатольевич'),
            UserEntity(name: 'Петрова Вера Борисовна'),
            UserEntity(name: 'Волков Антон Сергеевич'),
            UserEntity(name: 'Соловьева Ирина Викторовна'),
            UserEntity(name: 'Васильев Максим Андреевич'),
            UserEntity(name: 'Зайцева Ольга Николаевна'),
            UserEntity(name: 'Самедов Рамал Фейзула:Оглы'),
            UserEntity(name: 'Самедов Роман Федерович'),
            UserEntity(name: 'Рощупник Александр Владимирович'),
            UserEntity(name: 'Кулиева Айгуль Мубариз-Кызы'),
            UserEntity(
                name: 'Подбуртный Максим Сергеевич',
                attendanceStatus: AttendanceStatus.sick),
          ]);
    });
  }
}
