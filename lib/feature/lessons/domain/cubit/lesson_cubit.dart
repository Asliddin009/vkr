import 'dart:async';

import 'package:client_vkr/app/utils/utils.dart';
import 'package:client_vkr/feature/auth/domain/auth_bloc/auth_cubit.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/lessons/domain/lessons_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'lesson_state.dart';
part 'lesson_cubit.freezed.dart';

@Singleton()
class LessonCubit extends Cubit<LessonState> {
  LessonCubit(this.repo, this.authCubit) : super(const LessonState.initial()) {
    authSub = authCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) => getLessons(),
        notAuthorized: (value) => logOut(),
      );
    });
  }
  final LessonsRepo repo;
  final AuthCubit authCubit;
  late final StreamSubscription authSub;

  void logOut() {
    emit(const LessonState.initial());
  }

  void getLessons() async {
    emit(const LessonState.loading());
    try {
      final startDate = Utils.getStartDate();
      final endDate = Utils.getEndDate();
      final lessons = await repo.getLessons(startDate, endDate);
      emit(LessonState.done(lessons, 'test'));
    } on Exception catch (e) {
      emit(LessonState.error(kDebugMode ? e.toString() : 'Внутренняя ошибка '));
    }
  }

  void replaceFilter() {
    //emit(state.whenOrNull(done: (listLesson, dateStart) => ,));
  }
}
