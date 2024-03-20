import 'package:client_vkr/feature/lessons/ui/detail_lesson/detail_lesson_screen.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:flutter/material.dart';

class LessonContainer extends StatelessWidget {
  const LessonContainer(
      {super.key, required this.lessonEntity, this.onTapActivate = true});

  final LessonEntity lessonEntity;
  final bool onTapActivate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTapActivate) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailLessonScreen(
                        lessonEntity: lessonEntity,
                      )));
        }
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.only(left: 15),
        height: 140,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 10,
                right: 5,
                top: 7,
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                    "${lessonEntity.startLesson}-${lessonEntity.endLesson}",
                    style: Theme.of(context).textTheme.labelLarge),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(lessonEntity.name ?? " ",
                    style: const TextStyle(fontSize: 15))),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                lessonEntity.kindOfWork ?? " ",
                style: const TextStyle(color: Colors.black, fontSize: 13),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                bottom: 7,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                "Кабинет ${lessonEntity.auditorium}",
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
