import 'dart:async';
import 'dart:developer';
import 'package:client_vkr/app/utils/utils.dart';
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/lessons/domain/entities/qr_code_data/lesson_student_entity.dart';
import 'package:client_vkr/feature/lessons/domain/lessons_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_lesson_state.dart';
part 'detail_lesson_cubit.freezed.dart';

class DetailLessonCubit extends Cubit<DetailLessonState> {
  DetailLessonCubit(this.id, this.repo)
      : super(const DetailLessonState(asyncSnapshot: AsyncSnapshot.nothing()));

  final LessonsRepo repo;
  final int id;
  bool isWork = false;
  Timer? timerUpdate;
  void startListenQrCode() async {
    isWork = true;
    _getQrCodeUrl();
    getLessonStudents();

    timerUpdate ??= Timer.periodic(const Duration(seconds: 1), (timer) {
      emit(state.copyWith(timer: state.timer - 1));
      if (state.timer == 0 && isWork == true) {
        _getQrCodeUrl();
        //getLessonStudents();
      }
    });
  }

  void finishListenQrCode() async {
    isWork = false;
    emit(const DetailLessonState(
      asyncSnapshot: AsyncSnapshot.nothing(),
    ));
  }

  void openQrCodeFull() {
    final flag = !state.isFullQrCode;
    emit(state.copyWith(isFullQrCode: flag));
  }

  void swapAttendanceStatus(List<UserEntity> list) {
    emit(state.copyWith(
        lessonStudentsEntity:
            state.lessonStudentsEntity!.copyWith(listStudent: list)));
  }

  void swapAttendanceStatus2(AttendanceStatus attendanceStatus) {
    //todo добавить отмечание
    emit(state.copyWith(
        lessonStudentsEntity: state.lessonStudentsEntity!.copyWith()));
  }

  void emitNewBodyState(BodyState bodyState) {
    emit(state.copyWith(bodyState: bodyState));
  }

  void _getQrCodeUrl() async {
    try {
      emit(state.copyWith(
          asyncSnapshot: const AsyncSnapshot.waiting(), url: state.url));
      final url = await repo.getUrl(id);
      log('qr code обновился');
      emit(state.copyWith(
          timer: 5,
          url: url,
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, null)));
    } on Exception catch (e) {
      log('ошибка в методе _getQrCodeUrl');
      addError(e);
    }
  }

  void getLessonStudents() async {
    try {
      emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
      final lessonStudentsEntity = await repo.getStudents(id);
      final list = Utils.getWidgetListFromUserEntity(
          lessonStudentsEntity.listStudent, (value) {});
      emit(state.copyWith(
          listStudentWidget: list,
          lessonStudentsEntity: lessonStudentsEntity,
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, null)));
    } on Exception catch (e) {
      log('ошибка в методе getLessonStudents');
      addError(e);
    }
  }

  Future<bool> addUser(String name, String? group) async {
    try {
      await repo.addStudentInLesson({"Name": name, "Group": group ?? " "});
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }
}
