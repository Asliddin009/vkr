// ignore_for_file: use_build_context_synchronously

import 'package:client_vkr/app/di/init_di.dart';
import 'package:client_vkr/app/ui/components/app_snack_bar.dart';
import 'package:client_vkr/app/ui/components/app_text_button.dart';
import 'package:client_vkr/app/utils/utils.dart';
import 'package:client_vkr/feature/lessons/domain/cubit/lesson_cubit.dart';
import 'package:client_vkr/feature/lessons/ui/components/filter_list_group.dart';
import 'package:client_vkr/feature/lessons/ui/components/filter_list_lesson.dart';
import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';

class AppFilterDrawer extends StatelessWidget {
  const AppFilterDrawer({
    super.key,
    required this.state,
  });
  final LessonState state;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width / 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Text("Фильтры пары"),
                const Divider(),
                const Text('Получить Рассписание'),
                TextButton(
                  onPressed: () async {
                    final date = await showDatePickerDialog(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 4,
                          left: MediaQuery.of(context).size.width / 4,
                          top: MediaQuery.of(context).size.height / 5,
                          bottom: MediaQuery.of(context).size.height / 5),
                      context: context,
                      minDate: DateTime(2021, 1, 1),
                      maxDate: DateTime(2025, 12, 31),
                      initialDate: DateTime.now(),
                    );
                    if (date == null) return;
                    final dateString = Utils.convertDateTimeToString(date);
                    locator.get<LessonCubit>().addFilter(startDate: dateString);
                    //todo emit startData
                    AppSnackBar.showSnackBarSuccesful(
                        context, state.filterEntity!.startDate);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('С'),
                      Text(state.filterEntity!.startDate)
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final date = await showDatePickerDialog(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width / 4,
                          left: MediaQuery.of(context).size.width / 4,
                          top: MediaQuery.of(context).size.height / 5,
                          bottom: MediaQuery.of(context).size.height / 5),
                      context: context,
                      minDate: DateTime(2021, 1, 1),
                      maxDate: DateTime(2025, 12, 31),
                      initialDate: DateTime.now(),
                    );
                    if (date == null) return;
                    final dateString = Utils.convertDateTimeToString(date);
                    locator.get<LessonCubit>().addFilter(endDate: dateString);
                    AppSnackBar.showSnackBarSuccesful(
                        context, state.filterEntity!.endDate);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('До'),
                      Text(state.filterEntity!.endDate)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text("Предметы:"),
                FilterListLessons(
                    listFullLessons: state.listLessonType,
                    listFilterLessons: state.filterEntity!.listLessons),
                const SizedBox(
                  height: 16,
                ),
                const Text("Группы:"),
                FilterListGroup(
                    listFullGroups: state.listGroup,
                    listFilterGroups: state.filterEntity!.listGroups)
              ],
            ),
            AppTextButton(
                onPressed: () {
                  locator.get<LessonCubit>().getLessons();
                },
                text: 'Применить')
          ],
        ),
      ),
    );
  }
}
