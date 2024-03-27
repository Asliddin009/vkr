import 'dart:developer';

import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/detail_lesson/domain/detail_lesson_cubit/detail_lesson_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListStudent extends StatelessWidget {
  const ListStudent({
    super.key,
    required this.list,
  });
  final List<Widget> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Фио студента'),
              Row(
                children: [
                  SizedBoxForCheckbox(
                    child: Tooltip(
                        message: 'Присутсвовал',
                        child: Center(child: Text('П'))),
                  ), // иконка для "отметился"
                  SizedBoxForCheckbox(
                    child: Tooltip(
                        message: 'Болеет', child: Center(child: Text('Б'))),
                  ), // иконка для "болеет"
                  SizedBoxForCheckbox(
                    child: Tooltip(
                        message: 'По уважительной причине',
                        child: Center(child: Text('У'))),
                  ), // иконка для "по уваж. причине"
                  SizedBoxForCheckbox(
                    child: Tooltip(
                        message: 'Отсутствует',
                        child: Center(child: Text('О'))),
                  ), // иконка для "отсутствует"
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: list),
          ),
        ),
      ],
    );
  }
}

final class SizedBoxForCheckbox extends StatelessWidget {
  const SizedBoxForCheckbox({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 40,
      child: child,
    );
  }
}

List<Widget> getWidgetListFromUserEntity(
    List<UserEntity> list, BuildContext context) {
  log('start getWidgetListFromUserEntity');
  List<Widget> listRes = [];
  for (var element in list) {
    listRes.add(Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 150, child: Text(element.name)),
              Row(
                children: [
                  SizedBoxForCheckbox(
                    key: const Key('present'),
                    child: Checkbox(
                        value: element.attendanceStatus ==
                            AttendanceStatus.present,
                        onChanged: (value) {
                          final newList = list.map((entity) {
                            if (entity.name == element.name) {
                              return entity.copyWith(
                                  attendanceStatus: AttendanceStatus.present);
                            }
                            return entity;
                          }).toList();
                          context
                              .read<DetailLessonCubit>()
                              .swapAttendanceStatus(newList, context: context);
                        }),
                  ),
                  SizedBoxForCheckbox(
                    child: Checkbox(
                        value:
                            element.attendanceStatus == AttendanceStatus.sick,
                        onChanged: (value) {
                          //пока что так так как моковые данные
                          final newList = list.map((entity) {
                            if (entity.name == element.name) {
                              return entity.copyWith(
                                  attendanceStatus: AttendanceStatus.sick);
                            }
                            return entity;
                          }).toList();
                          context
                              .read<DetailLessonCubit>()
                              .swapAttendanceStatus(newList, context: context);
                        }),
                  ),
                  SizedBoxForCheckbox(
                    child: Checkbox(
                        value: element.attendanceStatus ==
                            AttendanceStatus.excused,
                        onChanged: (value) {
                          final newList = list.map((entity) {
                            if (entity.name == element.name) {
                              return entity.copyWith(
                                  attendanceStatus: AttendanceStatus.excused);
                            }
                            return entity;
                          }).toList();
                          context
                              .read<DetailLessonCubit>()
                              .swapAttendanceStatus(newList, context: context);
                        }),
                  ),
                  SizedBoxForCheckbox(
                    child: Checkbox(
                        value:
                            element.attendanceStatus == AttendanceStatus.absent,
                        onChanged: (value) {
                          final newList = list.map((entity) {
                            if (entity.name == element.name) {
                              return entity.copyWith(
                                  attendanceStatus: AttendanceStatus.absent);
                            }
                            return entity;
                          }).toList();
                          context
                              .read<DetailLessonCubit>()
                              .swapAttendanceStatus(newList, context: context);
                        }),
                  ),
                ],
              ),
            ],
          ),
          element != list[list.length - 1] ? const Divider() : const SizedBox(),
        ],
      ),
    ));
  }
  return listRes;
}
