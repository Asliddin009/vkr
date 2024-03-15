import 'package:client_vkr/app/di/init_di.dart';
import 'package:client_vkr/app/domain/entities/error_entity/error_entity.dart';
import 'package:client_vkr/app/ui/app_container.dart';
import 'package:client_vkr/app/ui/app_snack_bar.dart';
import 'package:client_vkr/app/ui/app_text_button.dart';
import 'package:client_vkr/app/ui/constrained_box.dart';
import 'package:client_vkr/feature/lessons/domain/detail_lesson_cubit/detail_lesson_cubit.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/lessons/domain/lessons_repo.dart';
import 'package:client_vkr/feature/lessons/ui/components/lesson_container.dart';
import 'package:client_vkr/feature/lessons/ui/components/timer_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class DetailLessonScreen extends StatelessWidget {
  const DetailLessonScreen({super.key, required this.lessonEntity});
  final LessonEntity lessonEntity;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DetailLessonCubit(lessonEntity.id, locator.get<LessonsRepo>()),
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
            ? Scaffold(
                body: AppContainer(
                  height: double.infinity,
                  margin: const EdgeInsets.all(50),
                  padding: const EdgeInsets.all(50),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          child: PrettyQrView.data(
                            data: state.url,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: AppTextButton(
                            onPressed: () {
                              context
                                  .read<DetailLessonCubit>()
                                  .openQrCodeFull();
                            },
                            text: 'Вернуться назад'),
                      )
                    ],
                  ),
                ),
              )
            : Scaffold(
                body: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          LessonContainer(
                            lessonEntity: lessonEntity,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 20),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                height: 40,
                                width: 130,
                                child: AppTextButton(
                                    onPressed: () {
                                      context
                                          .read<DetailLessonCubit>()
                                          .finishListenQrCode();
                                      Navigator.pop(context);
                                    },
                                    text: ('Вернуться')),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppConstrainedBox(
                      child: AppContainer(
                        padding:
                            const EdgeInsets.only(top: 30, left: 30, right: 30),
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Чтобы отметиться надо просканировать Qr code',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            context.read<DetailLessonCubit>().isWork
                                ? AppTextButton(
                                    onPressed: () {
                                      context
                                          .read<DetailLessonCubit>()
                                          .finishListenQrCode();
                                    },
                                    text: 'Скрыть Qr Code')
                                : AppTextButton(
                                    onPressed: () {
                                      context
                                          .read<DetailLessonCubit>()
                                          .startListenQrCode();
                                    },
                                    text: 'Показать Qr Code'),
                            const SizedBox(
                              height: 25,
                            ),
                            state.asyncSnapshot == const AsyncSnapshot.waiting()
                                ? SpinKitDancingSquare(
                                    color: Colors.blueAccent.shade400,
                                    size: 200.0,
                                  )
                                : state.url == ''
                                    ? const SizedBox(
                                        height: 200,
                                        width: 200,
                                      )
                                    : GestureDetector(
                                        onDoubleTap: () {
                                          context
                                              .read<DetailLessonCubit>()
                                              .openQrCodeFull();
                                        },
                                        child: SizedBox(
                                          height: 200,
                                          width: 200,
                                          child: PrettyQrView.data(
                                            data: state.url,
                                          ),
                                        ),
                                      ),
                            const SizedBox(
                              height: 16,
                            ),
                            state.url == ''
                                ? const SizedBox()
                                : const TimerTextWidget()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
