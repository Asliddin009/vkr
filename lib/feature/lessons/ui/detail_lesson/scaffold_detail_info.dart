import 'package:client_vkr/app/ui/app_container.dart';
import 'package:client_vkr/app/ui/app_text_button.dart';
import 'package:client_vkr/app/ui/constrained_box.dart';
import 'package:client_vkr/feature/lessons/domain/detail_lesson_cubit/detail_lesson_cubit.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/lessons/ui/components/lesson_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ScaffoldDetailScreen extends StatelessWidget {
  const ScaffoldDetailScreen({
    super.key,
    required this.lessonEntity,
    required this.state,
  });
  final DetailLessonState state;
  final LessonEntity lessonEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              height: MediaQuery.of(context).size.height * 0.6,
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
                      : state.qrCodeData.url == ''
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
                                  data: state.qrCodeData.url,
                                ),
                              ),
                            ),
                  const SizedBox(
                    height: 16,
                  ),
                  state.qrCodeData.url == ''
                      ? const SizedBox()
                      : Text("до обновления Qr-coda ${state.timer} секунд")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
