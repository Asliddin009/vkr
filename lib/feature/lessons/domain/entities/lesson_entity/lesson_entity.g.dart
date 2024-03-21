// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonEntityImpl _$$LessonEntityImplFromJson(Map<String, dynamic> json) =>
    _$LessonEntityImpl(
      id: json['Id'] as int,
      name: json['Name'] as String?,
      date: json['Date'] as String?,
      auditorium: json['Auditorium'] as String?,
      startLesson: json['StartLesson'] as String?,
      endLesson: json['EndLesson'] as String?,
      kindOfWork: json['KindOfWork'] as String?,
      lessonType: json['LessonType'] as String?,
      group: (json['Group'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$LessonEntityImplToJson(_$LessonEntityImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Date': instance.date,
      'Auditorium': instance.auditorium,
      'StartLesson': instance.startLesson,
      'EndLesson': instance.endLesson,
      'KindOfWork': instance.kindOfWork,
      'LessonType': instance.lessonType,
      'Group': instance.group,
    };
