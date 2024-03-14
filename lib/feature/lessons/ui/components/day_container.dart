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
    double height = 30 + 140 * listLessons.length.toDouble();
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
        )
      ],
    );
  }
}
