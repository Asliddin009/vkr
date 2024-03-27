import 'package:client_vkr/app/di/init_di.dart';
import 'package:client_vkr/app/ui/ui_utils.dart';
import 'package:client_vkr/feature/lessons/domain/cubit/lesson_cubit.dart';
import 'package:flutter/material.dart';

class FilterListLessons extends StatelessWidget {
  const FilterListLessons(
      {super.key,
      required this.listFullLessons,
      required this.listFilterLessons});
  final List<String> listFullLessons;
  final List<String> listFilterLessons;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: listFullLessons
          .map((lesson) => Row(
                children: [
                  Checkbox(
                      value: listFilterLessons.contains(lesson),
                      onChanged: (value) {
                        locator.get<LessonCubit>().addFilter(lesson: lesson);
                      }),
                  UtilsUi.isMobileDevice(context)
                      ? SizedBox(
                          width: MediaQuery.sizeOf(context).width * 6 / 10,
                          child: Text(
                            lesson,
                            overflow: TextOverflow.ellipsis,
                          ))
                      : SizedBox(
                          width: MediaQuery.sizeOf(context).width / 5,
                          child: Text(
                            lesson,
                            overflow: TextOverflow.visible,
                          ))
                ],
              ))
          .toList(),
    );
  }
}
