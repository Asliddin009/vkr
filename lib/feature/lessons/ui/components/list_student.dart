import 'package:flutter/material.dart';

class ListStudent extends StatelessWidget {
  const ListStudent({super.key, required this.list, required this.context});
  final List<Widget> list;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    print(list.length);
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

/* 
ListView.separated(
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
                            child: Checkbox(
                                value: list[index].attendanceStatus ==
                                    AttendanceStatus.present,
                                onChanged: (value) {
                                  // final newList = list.map((entity) {
                                  //   if (entity.name == list[index].name) {
                                  //     return entity.copyWith(
                                  //         attendanceStatus:
                                  //             AttendanceStatus.present);
                                  //   }
                                  //   return entity;
                                  // }).toList();
                                  // context
                                  //     .read<DetailLessonCubit>()
                                  //     .swapAttendanceStatus(newList);
                                }),
                          ),
                          SizedBoxForCheckbox(
                            child: Checkbox(
                                value: list[index].attendanceStatus ==
                                    AttendanceStatus.sick,
                                onChanged: (value) {
                                  // final newList = list.map((entity) {
                                  //   if (entity.name == list[index].name) {
                                  //     return entity.copyWith(
                                  //         attendanceStatus:
                                  //             AttendanceStatus.sick);
                                  //   }
                                  //   return entity;
                                  // }).toList();
                                  // context
                                  //     .read<DetailLessonCubit>()
                                  //     .swapAttendanceStatus(newList);
                                }),
                          ),
                          SizedBoxForCheckbox(
                            child: Checkbox(
                                value: list[index].attendanceStatus ==
                                    AttendanceStatus.excused,
                                onChanged: (value) {
                                  // final newList = list.map((entity) {
                                  //   if (entity.name == list[index].name) {
                                  //     return entity.copyWith(
                                  //         attendanceStatus:
                                  //             AttendanceStatus.excused);
                                  //   }
                                  //   return entity;
                                  // }).toList();
                                  // context
                                  //     .read<DetailLessonCubit>()
                                  //     .swapAttendanceStatus(newList);
                                }),
                          ),
                          SizedBoxForCheckbox(
                            child: Checkbox(
                                value: list[index].attendanceStatus ==
                                    AttendanceStatus.absent,
                                onChanged: (value) {
                                  // final newList = list.map((entity) {
                                  //   if (entity.name == list[index].name) {
                                  //     return entity.copyWith(
                                  //         attendanceStatus:
                                  //             AttendanceStatus.absent);
                                  //   }
                                  //   return entity;
                                  // }).toList();
                                  // context
                                  //     .read<DetailLessonCubit>()
                                  //     .swapAttendanceStatus(newList);
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
          )
*/
