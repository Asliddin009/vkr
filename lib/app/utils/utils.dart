import 'dart:developer';

import 'package:client_vkr/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:client_vkr/feature/lessons/ui/components/list_student.dart';
import 'package:flutter/material.dart';

abstract class Utils {
  ///return lessonId and qrCodeId
  static (String lessonId, String qrCodeId) getIdFromUrl(String url) {
    RegExp regExp = RegExp('lessonId=(\\d+)&qrCodeId=(\\d+)');
    Match match = regExp.firstMatch(url) as Match;
    String? lessonId = match.group(1);
    String? qrCodeId = match.group(2);
    log('lessonId: $lessonId, qrCodeId: $qrCodeId');
    return (lessonId ?? " ", qrCodeId ?? " ");
  }

  static String getStartDate() {
    int weekday = DateTime.now().weekday - 1;
    return convertDateTimeToString(DateTime(DateTime.now().year,
        DateTime.now().month, DateTime.now().day - weekday));
  }

  static String getEndDate() {
    int weekday = 7 - DateTime.now().weekday;
    return convertDateTimeToString(DateTime(DateTime.now().year,
        DateTime.now().month, DateTime.now().day + weekday));
  }

  static DateTime convertStringToDateTime(String yyyymmdd) {
    int dd = int.parse(yyyymmdd.substring(0, 2));
    int mm = int.parse(yyyymmdd.substring(3, 5));
    int yyyy = int.parse(yyyymmdd.substring(6, 10));
    late DateTime dateTimeObject;
    dateTimeObject = DateTime(yyyy, mm, dd);
    return dateTimeObject;
  }

  static String convertDateTimeToString(DateTime dateTime) {
    String year = dateTime.year.toString();

    String month = dateTime.month.toString();
    if (month.length == 1) {
      month = '0$month';
    }

    String day = dateTime.day.toString();
    if (day.length == 1) {
      day = '0$day';
    }

    String ddmmyyyy = "$day.$month.$year";
    return ddmmyyyy;
  }

  static String getTitleForTimetableTile(DateTime dateTime) {
    final month = getMonthName(dateTime.month);
    final weekday = getWeekDay(dateTime.weekday);
    return "${dateTime.day} $month, $weekday";
  }

  static String getWeekDay(int day) {
    return switch (day) {
      (1) => "Понедельник",
      (2) => "Вторник",
      (3) => "Среда",
      (4) => "Четверг",
      (5) => "Пятница",
      (6) => "Суббота",
      (7) => "Воскресенье",
      _ => "Неизвестный день недели"
    };
  }

  static String getMonthName(int month) {
    return switch (month) {
      (1) => "Января",
      (2) => "Февраля",
      (3) => "Марта",
      (4) => "Апреля",
      (5) => "Мая",
      (6) => "Июня",
      (7) => "Июля",
      (8) => "Августа",
      (9) => "Сентября",
      (10) => "Октября",
      (11) => "Ноября",
      (_) => "Декабря"
    };
  }

  static List<Widget> getWidgetListFromUserEntity(
      List<UserEntity> list, Function(bool?)? onChanged) {
    List<Widget> listRes = [];
    for (var element in list) {
      listRes.add(Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(element.name),
                Row(
                  children: [
                    SizedBoxForCheckbox(
                      child: Checkbox(
                          value: element.attendanceStatus ==
                              AttendanceStatus.present,
                          onChanged: (value) {}),
                    ),
                    SizedBoxForCheckbox(
                      child: Checkbox(
                          value:
                              element.attendanceStatus == AttendanceStatus.sick,
                          onChanged: (value) {
                            // final newList = list.map((entity) {
                            //   if (entity.name == element.name) {
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
                          value: element.attendanceStatus ==
                              AttendanceStatus.excused,
                          onChanged: (value) {
                            // final newList = list.map((entity) {
                            //   if (entity.name == element.name) {
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
                          value: element.attendanceStatus ==
                              AttendanceStatus.absent,
                          onChanged: (value) {
                            // final newList = list.map((entity) {
                            //   if (entity.name == element.name) {
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
            element != list[list.length - 1]
                ? const Divider()
                : const SizedBox(),
          ],
        ),
      ));
    }
    return listRes;
  }
}
