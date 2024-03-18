import 'dart:async';
import 'dart:developer';
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/lessons/domain/entities/qr_code_data/qr_code_data.dart';
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
    timerUpdate ??= Timer.periodic(const Duration(seconds: 1), (timer) {
      emit(state.copyWith(timer: state.timer - 1));
      if (state.timer == 0 && isWork == true) {
        _getQrCodeUrl();
      }
    });
  }

  void finishListenQrCode() async {
    isWork = false;
    emit(const DetailLessonState(
        asyncSnapshot: AsyncSnapshot.nothing(),
        qrCodeData: QrCodeData(url: '', countStudent: 0)));
  }

  void openQrCodeFull() {
    final flag = !state.isFullQrCode;
    emit(state.copyWith(isFullQrCode: flag));
  }

  void _getQrCodeUrl() async {
    emit(state.copyWith(
        asyncSnapshot: const AsyncSnapshot.waiting(),
        qrCodeData:
            QrCodeData(url: '', countStudent: state.qrCodeData.countStudent)));
    final url = await repo.getUrl(id);
    log('qr code обновился');
    emit(state.copyWith(
        timer: 5,
        qrCodeData: QrCodeData(url: url, countStudent: 5),
        asyncSnapshot:
            const AsyncSnapshot.withData(ConnectionState.done, null)));
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }
}
