// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) =>
    _SubscriptionModel(
      userUid: json['userUid'] as String?,
      startAt: _timestampToDateTime(json['startAt']),
      expireAt: _timestampToDateTime(json['expireAt']),
      subject: json['subject'] as String,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SubscriptionModelToJson(_SubscriptionModel instance) =>
    <String, dynamic>{
      'userUid': instance.userUid,
      'startAt': _dateTimeToTimestamp(instance.startAt),
      'expireAt': _dateTimeToTimestamp(instance.expireAt),
      'subject': instance.subject,
      'price': instance.price,
    };
