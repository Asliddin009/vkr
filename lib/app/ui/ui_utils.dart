import 'package:client_vkr/app/utils/utils.dart';
import 'package:client_vkr/feature/lessons/domain/entities/filter_entity/filter_entity.dart';
import 'package:client_vkr/feature/lessons/domain/entities/lesson_entity/lesson_entity.dart';
import 'package:client_vkr/feature/lessons/ui/components/day_container.dart';
import 'package:flutter/material.dart';

abstract class UtilsUi {
  static List<Widget> getListDayContainer(
      List<LessonEntity> listLessons, FilterEntity filterEntity) {
    DateTime data = Utils.convertStringToDateTime(filterEntity.startDate);
    List<Widget> list = [];
    while (data.isBefore(Utils.convertStringToDateTime(filterEntity.endDate))) {
      final dataString = Utils.convertDateTimeToString(data);
      list.add(DayContainer(
          listLessons: listLessons
              .where((element) => element.date == dataString)
              .toList(),
          dateTimeNow: data));
      data = data.add(const Duration(days: 1));
    }
    // for (int i = 0; i < 6; i++) {
    //   final dataString = Utils.convertDateTimeToString(data);
    //   list.add(DayContainer(
    //       listLessons: listLessons
    //           .where((element) => element.date == dataString)
    //           .toList(),
    //       dateTimeNow: data));
    //   data = data.add(const Duration(days: 1));
    // }
    return list;
  }

  static bool isMobileDevice(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final targetPlatform = Theme.of(context).platform;

    if (targetPlatform == TargetPlatform.android ||
        targetPlatform == TargetPlatform.iOS ||
        screenWidth <= 600) {
      return true;
    }

    return false;
  }
}
