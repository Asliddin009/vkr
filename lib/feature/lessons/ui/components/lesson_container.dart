import 'package:client_vkr/app/ui/components/app_text.dart';
import 'package:client_vkr/app/utils/color_hex.dart';
import 'package:client_vkr/feature/detail_lesson/ui/screens/detail_lesson_screen.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:flutter/material.dart';

class LessonContainer extends StatelessWidget {
  const LessonContainer({super.key, required this.lessonEntity});

  final LessonEntity lessonEntity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailLessonScreen(
                        lessonEntity: lessonEntity,
                      )));
        },
        child: Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            margin: const EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width * 9 / 10,
            height: 85,
            decoration: BoxDecoration(
                color: HexColor.fromHex('#dadff2'),
                border: Border.all(color: HexColor.fromHex('#ffffff')),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: lessonEntity.startLesson.toString(),
                        ),
                        AppText(text: lessonEntity.endLesson.toString())
                      ],
                    )),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    width: 10,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: getColorForContentTableOfLessonsName(
                            lessonEntity.kindOfWork ?? " ")),
                    child: Center(
                        child: Text(
                      lessonEntity.contentTableOfLessonsName.toString(),
                      style: TextStyle(
                          fontSize: 13,
                          color: lessonEntity.kindOfWork ==
                                  "Практические (семинарские занятия)"
                              ? Colors.black87
                              : Colors.white),
                    )),
                  ),
                ),
                Expanded(
                    flex: 30,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: AppText(
                        text: lessonEntity.name ?? '',
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: AppText(
                        text: lessonEntity.group
                            .map((e) => "$e ")
                            .join(", ")
                            .toString())),
                Expanded(
                    flex: 5,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: AppText(
                        text: lessonEntity.auditorium ?? '',
                      ),
                    )),
              ],
            )));
  }

  Color getColorForContentTableOfLessonsName(String lessonType) {
    return switch (lessonType) {
      ("Лекция") => Colors.green.shade800,
      ("Практические (семинарские занятия)") => Colors.yellow,
      ('Лабораторные работы') => Colors.blueAccent.shade700,
      (_) => Colors.yellow.shade900
    };
  }
}
