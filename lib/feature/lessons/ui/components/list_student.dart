import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/lessons/domain/detail_lesson_cubit/detail_lesson_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListStudent extends StatelessWidget {
  const ListStudent({super.key, required this.list, required this.context});
  final List<UserEntity> list;
  final BuildContext context;

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
                    child: Center(child: Text('П')),
                  ), // иконка для "отметился"
                  SizedBoxForCheckbox(
                    child: Center(child: Text('Б')),
                  ), // иконка для "болеет"
                  SizedBoxForCheckbox(
                    child: Center(child: Text('У')),
                  ), // иконка для "по уваж. причине"
                  SizedBoxForCheckbox(
                    child: Center(child: Text('О')),
                  ), // иконка для "отсутствует"
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(list[index].name),
                      Row(
                        children: [
                          SizedBoxForCheckbox(
                            tooltipText: 'Присутсвует',
                            child: Checkbox(
                                value: list[index].attendanceStatus ==
                                    AttendanceStatus.present,
                                onChanged: (value) {
                                  final newList = list.map((entity) {
                                    if (entity.name == list[index].name) {
                                      return entity.copyWith(
                                          attendanceStatus:
                                              AttendanceStatus.present);
                                    }
                                    return entity;
                                  }).toList();
                                  context
                                      .read<DetailLessonCubit>()
                                      .swapAttendanceStatus(newList);
                                }),
                          ),
                          SizedBoxForCheckbox(
                            tooltipText: 'Болеет',
                            child: Checkbox(
                                value: list[index].attendanceStatus ==
                                    AttendanceStatus.sick,
                                onChanged: (value) {
                                  final newList = list.map((entity) {
                                    if (entity.name == list[index].name) {
                                      return entity.copyWith(
                                          attendanceStatus:
                                              AttendanceStatus.sick);
                                    }
                                    return entity;
                                  }).toList();
                                  context
                                      .read<DetailLessonCubit>()
                                      .swapAttendanceStatus(newList);
                                }),
                          ),
                          SizedBoxForCheckbox(
                            tooltipText: 'Уважительная причина',
                            child: Checkbox(
                                value: list[index].attendanceStatus ==
                                    AttendanceStatus.excused,
                                onChanged: (value) {
                                  final newList = list.map((entity) {
                                    if (entity.name == list[index].name) {
                                      return entity.copyWith(
                                          attendanceStatus:
                                              AttendanceStatus.excused);
                                    }
                                    return entity;
                                  }).toList();
                                  context
                                      .read<DetailLessonCubit>()
                                      .swapAttendanceStatus(newList);
                                }),
                          ),
                          SizedBoxForCheckbox(
                            tooltipText: 'Отсутсвует',
                            child: Checkbox(
                                value: list[index].attendanceStatus ==
                                    AttendanceStatus.absent,
                                onChanged: (value) {
                                  final newList = list.map((entity) {
                                    if (entity.name == list[index].name) {
                                      return entity.copyWith(
                                          attendanceStatus:
                                              AttendanceStatus.absent);
                                    }
                                    return entity;
                                  }).toList();
                                  context
                                      .read<DetailLessonCubit>()
                                      .swapAttendanceStatus(newList);
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 2,
              );
            },
          ),
        ),
      ],
    );
  }
}

final class SizedBoxForCheckbox extends StatelessWidget {
  const SizedBoxForCheckbox(
      {super.key, required this.child, this.tooltipText = ''});
  final Widget child;
  final String tooltipText;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltipText,
      child: SizedBox(
        height: 30,
        width: 40,
        child: child,
      ),
    );
  }
}
