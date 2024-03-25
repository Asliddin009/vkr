import 'package:client_vkr/app/di/init_di.dart';
import 'package:client_vkr/app/domain/entities/error_entity/error_entity.dart';
import 'package:client_vkr/app/ui/components/app_snack_bar.dart';
import 'package:client_vkr/feature/detail_lesson/domain/detail_lesson_cubit/detail_lesson_cubit.dart';
import 'package:client_vkr/feature/detail_lesson/domain/detail_lesson_repo.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/detail_lesson/ui/screens/scaffold_detail_info.dart';
import 'package:client_vkr/feature/detail_lesson/ui/screens/scaffold_full_qr_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailLessonScreen extends StatelessWidget {
  const DetailLessonScreen({super.key, required this.lessonEntity});
  final LessonEntity lessonEntity;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DetailLessonCubit(lessonEntity.id, locator.get<DetailLessonRepo>()),
      child: _DetailLessonScreen(lessonEntity),
    );
  }
}

class _DetailLessonScreen extends StatelessWidget {
  const _DetailLessonScreen(this.lessonEntity);
  final LessonEntity lessonEntity;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailLessonCubit, DetailLessonState>(
      builder: (context, state) {
        return state.isFullQrCode
            ? ScaffoldFullQrCode(
                state: state,
              )
            : ScaffoldDetailScreen(
                lessonEntity: lessonEntity,
                state: state,
              );
      },
      listener: (BuildContext context, DetailLessonState state) {
        if (state.asyncSnapshot.hasData) {
          AppSnackBar.showSnackBarWithMessage(
              context, state.asyncSnapshot.data.toString());
        }
        if (state.asyncSnapshot.hasError) {
          AppSnackBar.showSnackBarWithError(
              context, ErrorEntity.fromException(state.asyncSnapshot.error));
          Navigator.of(context).pop();
        }
      },
    );
  }
}
