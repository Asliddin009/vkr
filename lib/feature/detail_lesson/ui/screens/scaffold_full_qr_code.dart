import 'package:client_vkr/app/ui/components/app_container.dart';
import 'package:client_vkr/app/ui/components/app_text_button.dart';
import 'package:client_vkr/app/ui/ui_utils.dart';
import 'package:client_vkr/feature/detail_lesson/domain/detail_lesson_cubit/detail_lesson_cubit.dart';
import 'package:client_vkr/feature/detail_lesson/ui/components/list_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ScaffoldFullQrCode extends StatelessWidget {
  const ScaffoldFullQrCode({
    super.key,
    required this.state,
  });
  final DetailLessonState state;

  @override
  Widget build(BuildContext context) {
    return UtilsUi.isMobileDevice(context)
        ? Scaffold(
            backgroundColor: Colors.grey.shade300,
            body: AppContainer(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: PrettyQrView.data(
                        data: state.url,
                      ),
                    ),
                    AppTextButton(
                      onPressed: () {
                        context.read<DetailLessonCubit>().openQrCodeFull();
                      },
                      text: 'Вернуться назад',
                    )
                  ],
                )),
          )
        : Scaffold(
            backgroundColor: Colors.grey.shade300,
            body: AppContainer(
              height: double.infinity,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: PrettyQrView.data(
                        data: state.url,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                '${state.lessonStudentsEntity?.makeCountStudent ?? 0} студентов из ${state.lessonStudentsEntity?.totalCountStudent} отметились на паре'),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('до обновления Qr-coda ${state.timer} секунд'),
                            Expanded(
                              child: AppContainer(
                                margin: const EdgeInsets.only(
                                    top: 20, left: 40, right: 40, bottom: 30),
                                child: ListStudent(
                                  list: state.listStudentWidget,
                                ),
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: AppTextButton(
                              onPressed: () {
                                context
                                    .read<DetailLessonCubit>()
                                    .openQrCodeFull();
                              },
                              text: 'Вернуться назад'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
