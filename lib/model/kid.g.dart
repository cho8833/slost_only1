// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kid _$KidFromJson(Map<String, dynamic> json) => Kid(
      (json['id'] as num).toInt(),
      json['name'] as String,
      DateTime.parse(json['birthday'] as String),
      Gender.fromJson(json['gender'] as String),
      json['tendency'] as String?,
      json['remark'] as String?,
    );

Map<String, dynamic> _$KidToJson(Kid instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthday': instance.birthday.toIso8601String(),
      'gender': instance.gender,
      'tendency': instance.tendency,
      'remark': instance.remark,
    };
