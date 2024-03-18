import 'package:client_vkr/app/ui/app_container.dart';
import 'package:client_vkr/app/ui/app_text_button.dart';
import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/lessons/domain/detail_lesson_cubit/detail_lesson_cubit.dart';
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
    return Scaffold(
      body: AppContainer(
        height: double.infinity,
        margin: const EdgeInsets.all(50),
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
                  data: state.qrCodeData.url,
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
                          '${state.qrCodeData.countStudent} студентов отметились на паре'),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('до обновления Qr-coda ${state.timer} секунд'),
                      Expanded(
                        child: AppContainer(
                          margin: const EdgeInsets.only(
                              top: 20, left: 40, right: 40, bottom: 30),
                          color: Colors.blueAccent,
                          child: ListStudent(
                            list: state.list,
                          ),
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AppTextButton(
                        onPressed: () {
                          context.read<DetailLessonCubit>().openQrCodeFull();
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

class ListStudent extends StatelessWidget {
  const ListStudent({super.key, required this.list});
  final List<UserEntity> list;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(list[index].name);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 2,
        );
      },
    );
  }
}
