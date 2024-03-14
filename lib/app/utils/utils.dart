abstract class Utils {
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
}
