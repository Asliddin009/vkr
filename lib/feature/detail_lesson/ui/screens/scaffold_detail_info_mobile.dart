import 'package:client_vkr/app/domain/entities/error_entity/error_entity.dart';
import 'package:client_vkr/app/ui/components/app_container.dart';
import 'package:client_vkr/app/ui/components/app_snack_bar.dart';
import 'package:client_vkr/app/ui/components/app_text_button.dart';
import 'package:client_vkr/app/ui/components/app_text_field.dart';
import 'package:client_vkr/feature/detail_lesson/domain/detail_lesson_cubit/detail_lesson_cubit.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/detail_lesson/ui/components/list_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class ScaffoldDetailScreenMobile extends StatelessWidget {
  const ScaffoldDetailScreenMobile({
    super.key,
    required this.lessonEntity,
    required this.state,
  });
  final DetailLessonState state;
  final LessonEntity lessonEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 3,
            child: AppContainer(
              child: Padding(
                padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
                child: Column(
                  children: [
                    context.read<DetailLessonCubit>().isWork
                        ? AppTextButton(
                            onPressed: () {
                              context.read<DetailLessonCubit>()
                                ..emitNewBodyState(BodyState.qrCode)
                                ..finishListenQrCode();
                            },
                            text: 'Скрыть Qr Code',
                            buttonStyle: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                            ))
                        : AppTextButton(
                            onPressed: () {
                              context.read<DetailLessonCubit>()
                                ..emitNewBodyState(BodyState.qrCode)
                                ..startListenQrCode()
                                ..getLessonStudents(context: context);
                            },
                            text: 'Показать Qr Code'),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextButton(
                        onPressed: () {
                          final cubit = context.read<DetailLessonCubit>();
                          final list =
                              state.lessonStudentsEntity?.listStudent ?? [];
                          if (list.isEmpty) {
                            cubit.getLessonStudents(context: context);
                          }
                          cubit.emitNewBodyState(BodyState.list);
                        },
                        text: 'Показать Список студентов'),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextButton(
                        onPressed: () {
                          context
                              .read<DetailLessonCubit>()
                              .emitNewBodyState(BodyState.addUser);
                        },
                        text: 'Добавить Студента на пару'),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextButton(
                        onPressed: () {
                          context
                              .read<DetailLessonCubit>()
                              .finishListenQrCode();
                          Navigator.pop(context);
                        },
                        text: ('Вернуться')),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: AppContainer(
              child: switch (state.bodyState) {
                (BodyState.qrCode) => _QrCode(state: state),
                (BodyState.addUser) => _AddUserForm(),
                (BodyState.list) => _ListWidget(state: state),
                _ => _QrCode(state: state),
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _AddUserForm extends StatelessWidget {
  _AddUserForm();
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerGroup = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Форма добавление студента на пару'),
          const SizedBox(
            height: 15,
          ),
          AppTextField(controller: controllerName, labelText: 'ФИО'),
          const SizedBox(
            height: 15,
          ),
          AppTextField(controller: controllerGroup, labelText: 'Группа'),
          const SizedBox(
            height: 15,
          ),
          AppTextButton(
              onPressed: () {
                if (controllerName.text.isEmpty) {
                  AppSnackBar.showSnackBarWithMessage(
                      context, 'ФИО обязательное поле');
                }
                context
                    .read<DetailLessonCubit>()
                    .addUser(controllerName.text, controllerGroup.text)
                    .then((value) {
                  value
                      ? AppSnackBar.showSnackBarSuccesful(
                          context, 'пользователь добавлен')
                      : AppSnackBar.showSnackBarWithError(
                          context, ErrorEntity(message: 'Произошла ошибка'));
                });
              },
              text: 'Добавить')
        ],
      ),
    );
  }
}

class _ListWidget extends StatelessWidget {
  const _ListWidget({required this.state});
  final DetailLessonState state;

  @override
  Widget build(BuildContext context) {
    return switch (state.asyncSnapshot) {
      (const AsyncSnapshot.waiting()) => MediaQuery.sizeOf(context).width <= 600
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.blueAccent.shade400,
              ),
            )
          : SpinKitDancingSquare(
              color: Colors.blueAccent.shade400,
              size: 200.0,
            ),
      _ => ListStudent(
          list: state.listStudentWidget,
        )
    };
  }
}

class _QrCode extends StatelessWidget {
  const _QrCode({required this.state});

  final DetailLessonState state;
  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(
          height: 25,
        ),
        state.asyncSnapshot == const AsyncSnapshot.waiting()
            ? MediaQuery.sizeOf(context).width <= 600
                ? Center(
                    child: CircularProgressIndicator(
                      color: Colors.blueAccent.shade400,
                    ),
                  )
                : SpinKitDancingSquare(
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
                      context.read<DetailLessonCubit>()
                        ..getLessonStudents(context: context)
                        ..openQrCodeFull();
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
            : Column(
                children: [
                  Text("до обновления Qr-coda ${state.timer} секунд"),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                      'Нажмите 2 раза по QR коду для того чтобы открыть на весь экран')
                ],
              ),
      ],
    );
  }
}
