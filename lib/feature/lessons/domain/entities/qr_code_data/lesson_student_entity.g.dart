// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_student_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonStudentsEntityImpl _$$LessonStudentsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LessonStudentsEntityImpl(
      totalCountStudent: json['totalCountStudent'] as int,
      makeCountStudent: json['makeCountStudent'] as int,
      listStudent: (json['listStudent'] as List<dynamic>?)
              ?.map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LessonStudentsEntityImplToJson(
        _$LessonStudentsEntityImpl instance) =>
    <String, dynamic>{
      'totalCountStudent': instance.totalCountStudent,
      'makeCountStudent': instance.makeCountStudent,
      'listStudent': instance.listStudent,
    };
