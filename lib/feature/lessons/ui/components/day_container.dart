import 'package:client_vkr/app/ui/components/app_text.dart';
import 'package:client_vkr/app/utils/utils.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/lessons/ui/components/lesson_container.dart';
import 'package:flutter/material.dart';

class DayContainer extends StatelessWidget {
  const DayContainer(
      {super.key, required this.listLessons, required this.dateTimeNow});

  final DateTime dateTimeNow;
  final List<LessonEntity> listLessons;

  @override
  Widget build(BuildContext context) {
    final title = Utils.getTitleForTimetableTile(dateTimeNow);
    double height = 30 + 90 * listLessons.length.toDouble();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        listLessons.isEmpty
            ? const SizedBox()
            : Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                height: 25,
                child: Row(
                  children: [
                    const Expanded(
                        flex: 3,
                        child: AppText(
                          text: 'Время',
                        )),
                    Expanded(child: Container()),
                    const Expanded(
                        flex: 30,
                        child: AppText(
                          text: 'Дисциплина',
                        )),
                    const Expanded(
                        flex: 3,
                        child: AppText(
                          text: 'Поток/Группа',
                        )),
                    const Expanded(
                        flex: 5,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: AppText(
                            text: 'Кабинет',
                          ),
                        )),
                  ],
                ),
              ),
        SizedBox(
          height: height,
          child: listLessons.isNotEmpty
              ? ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: LessonContainer(
                        lessonEntity: listLessons[index],
                      ),
                    );
                  },
                  itemCount: listLessons.length,
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Занятий нет",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
        ),
      ],
    );
  }

  Color getColorForContentTable(String lessonType) {
    return switch (lessonType) {
      ("Лекция") => Colors.green.shade800,
      ("Практические (семинарские занятия)") => Colors.yellow,
      ('Лабораторные работы') => Colors.blueAccent.shade700,
      (_) => Colors.yellow.shade900
    };
  }
}
