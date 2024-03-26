import 'package:client_vkr/app/utils/utils.dart';

class FilterEntity {
  final String startDate;
  final String endDate;
  final List<String> listGroups;
  final List<String> listLessons;

  FilterEntity(
      {required this.startDate,
      required this.endDate,
      required this.listGroups,
      required this.listLessons});

  static FilterEntity getDefaulValue() {
    final startDate = Utils.getStartDate();
    final endDate = Utils.getEndDate();
    return FilterEntity(
        startDate: startDate,
        endDate: endDate,
        listGroups: [],
        listLessons: []);
  }

  FilterEntity copyWith({
    String? startDate,
    String? endDate,
    String? group,
    String? lesson,
  }) {
    if (listLessons.contains(lesson)) {
      return FilterEntity(
          startDate: startDate ?? this.startDate,
          endDate: endDate ?? this.endDate,
          listGroups: group == null ? listGroups : [...listGroups, group],
          listLessons: listLessons.where((e) => e != lesson).toList());
    }
    if (listGroups.contains(group)) {
      return FilterEntity(
          startDate: startDate ?? this.startDate,
          endDate: endDate ?? this.endDate,
          listGroups: listGroups.where((e) => e != group).toList(),
          listLessons: lesson == null ? listLessons : [...listLessons, lesson]);
    }
    return FilterEntity(
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        listGroups: group == null ? listGroups : [...listGroups, group],
        listLessons: lesson == null ? listLessons : [...listLessons, lesson]);
  }
}
