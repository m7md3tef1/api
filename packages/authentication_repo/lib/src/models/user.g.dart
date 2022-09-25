// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      token: json['token'] as String?,
      deviceId: json['device_id'] as String?,
      userType: json['user_type'] as String?,
      avatar: json['avatar'] as String?,
      classNumber: json['classNumber'] as String?,
      teacher: json['teacher'] as String?,
      classId: json['my_class_id'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'token': instance.token,
      'device_id': instance.deviceId,
      'user_type': instance.userType,
      'avatar': instance.avatar,
      'classNumber': instance.classNumber,
      'teacher': instance.teacher,
      'my_class_id': instance.classId,
    };
