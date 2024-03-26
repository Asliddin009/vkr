import 'package:client_vkr/app/di/init_di.dart';
import 'package:client_vkr/feature/lessons/domain/cubit/lesson_cubit.dart';
import 'package:flutter/material.dart';

class FilterListGroup extends StatelessWidget {
  const FilterListGroup(
      {super.key,
      required this.listFullGroups,
      required this.listFilterGroups});
  final List<String> listFullGroups;
  final List<String> listFilterGroups;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: listFullGroups
          .map((group) => Row(
                children: [
                  Checkbox(
                      value: listFilterGroups.contains(group),
                      onChanged: (value) {
                        locator.get<LessonCubit>().addFilter(group: group);
                      }),
                  SizedBox(
                      width: MediaQuery.sizeOf(context).width / 5,
                      child: Text(
                        group,
                        overflow: TextOverflow.visible,
                      ))
                ],
              ))
          .toList(),
    );
  }
}
