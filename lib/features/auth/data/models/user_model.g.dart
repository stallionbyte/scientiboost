// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  uid: json['uid'] as String,
  email: json['email'] as String,
  emailVerified: json['emailVerified'] as bool? ?? false,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
    };
