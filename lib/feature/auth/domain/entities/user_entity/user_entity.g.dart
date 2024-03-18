// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      userType: json['UserType'] as String?,
      token: json['Token'] as String?,
      name: json['Name'] as String,
      signature: json['Signature'] as String?,
      isTeacher: json['IsTeacher'] as bool?,
      expirateTime: json['ExpirateTime'] as String?,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'UserType': instance.userType,
      'Token': instance.token,
      'Name': instance.name,
      'Signature': instance.signature,
      'IsTeacher': instance.isTeacher,
      'ExpirateTime': instance.expirateTime,
    };
