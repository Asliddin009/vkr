import 'dart:async';
import 'dart:developer';

import 'package:client_vkr/app/utils/utils.dart';
import 'package:client_vkr/feature/auth/domain/auth_bloc/auth_cubit.dart';
import 'package:client_vkr/feature/lessons/domain/entities/filter_entity/filter_entity.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/lessons/domain/lessons_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'lesson_state.dart';
part 'lesson_cubit.freezed.dart';

@Singleton()
class LessonCubit extends Cubit<LessonState> {
  LessonCubit(this.repo, this.authCubit)
      : super(const LessonState(listLesson: [])) {
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
    emit(const LessonState(listLesson: []));
  }

  void init() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    final listLessonType = await repo.getLessonTypeList();
    final listGroup = await repo.getGroupList();
    getLessons();
    final filterEntity = FilterEntity.getDefaulValue();
    emit(state.copyWith(
        listLessonType: listLessonType,
        listGroup: listGroup,
        filterEntity: filterEntity));
  }

  void getLessons() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    try {
      final startDate = Utils.getStartDate();
      final endDate = Utils.getEndDate();
      final lessons = await repo.getLessons(startDate, endDate);
      emit(state.copyWith(
          listLesson: lessons,
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, null)));
    } on Exception catch (error) {
      emit(state.copyWith(
          asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    }
  }

  void addFilter({
    String? startDate,
    String? endDate,
    String? group,
    String? lesson,
  }) {
    try {
      final oldFilter = state.filterEntity;
      final newFilter = oldFilter!.copyWith(
          startDate: startDate, endDate: endDate, lesson: lesson, group: group);
      emit(state.copyWith(filterEntity: newFilter));
    } on Exception catch (error) {
      log('ошибка в addFilter');
      emit(state.copyWith(
          asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    }
  }
}
