import 'dart:async';
import 'dart:developer';
import 'package:client_vkr/feature/lessons/domain/lessons_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_lesson_state.dart';
part 'detail_lesson_cubit.freezed.dart';

class DetailLessonCubit extends Cubit<DetailLessonState> {
  DetailLessonCubit(this.id, this.repo)
      : super(const DetailLessonState(
            asyncSnapshot: AsyncSnapshot.nothing(), url: ''));

  final LessonsRepo repo;
  final int id;
  bool isWork = false;
  void startListenQrCode() async {
    isWork = true;
    _getQrCodeUrl();
    Timer.periodic(const Duration(seconds: 6), (timer) {
      if (isWork) {
        _getQrCodeUrl();
      }
    });
  }

  void finishListenQrCode() async {
    isWork = false;
    emit(const DetailLessonState(
        asyncSnapshot: AsyncSnapshot.nothing(), url: ''));
  }

  void openQrCodeFull() {
    final flag = !state.isFullQrCode;
    emit(state.copyWith(isFullQrCode: flag));
  }

  void _getQrCodeUrl() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    final url = await repo.getUrl(id);
    log('qr code обновился');
    emit(state.copyWith(
        url: url,
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
