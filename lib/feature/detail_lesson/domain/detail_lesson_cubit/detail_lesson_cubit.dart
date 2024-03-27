import 'dart:async';
import 'dart:developer';
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/detail_lesson/domain/detail_lesson_repo.dart';
import 'package:client_vkr/feature/detail_lesson/domain/entity/qr_code_data/lesson_student_entity.dart';
import 'package:client_vkr/feature/detail_lesson/ui/components/list_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'detail_lesson_state.dart';
part 'detail_lesson_cubit.freezed.dart';

class DetailLessonCubit extends Cubit<DetailLessonState> {
  DetailLessonCubit(this.id, this.repo)
      : super(const DetailLessonState(asyncSnapshot: AsyncSnapshot.nothing()));

  final DetailLessonRepo repo;
  final int id;
  bool isWork = false;
  Timer? timerUpdate;
  void startListenQrCode() async {
    isWork = true;
    _getQrCodeUrl();

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

  void swapAttendanceStatus(List<UserEntity> list, {BuildContext? context}) {
    log('swapAttendanceStatus активировался');
    //todo порефакторит когда будет прод
    if (context != null) {
      //
      final listWidget = getWidgetListFromUserEntity(list, context);
      emit(state.copyWith(
          listStudentWidget: listWidget,
          lessonStudentsEntity:
              state.lessonStudentsEntity!.copyWith(listStudent: list)));
    }
  }

  void emitNewBodyState(BodyState bodyState) {
    emit(state.copyWith(bodyState: bodyState));
  }

  void _getQrCodeUrl() async {
    try {
      if (state.isFullQrCode == false) {
        emit(state.copyWith(
            asyncSnapshot: const AsyncSnapshot.waiting(), url: ''));
      }
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

  void getLessonStudents({BuildContext? context}) async {
    try {
      emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
      final lessonStudentsEntity = await repo.getStudents(id);
      if (context != null) {
        final list = getWidgetListFromUserEntity(
            lessonStudentsEntity.listStudent,
            // ignore: use_build_context_synchronously
            context);
        emit(state.copyWith(
          listStudentWidget: list,
        ));
      }
      emit(state.copyWith(
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
