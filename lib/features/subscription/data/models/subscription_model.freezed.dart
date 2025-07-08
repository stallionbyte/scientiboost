// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionModel {

 String? get userUid;@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) DateTime get startAt;@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) DateTime get expireAt; String get subject; double? get price;
/// Create a copy of SubscriptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionModelCopyWith<SubscriptionModel> get copyWith => _$SubscriptionModelCopyWithImpl<SubscriptionModel>(this as SubscriptionModel, _$identity);

  /// Serializes this SubscriptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionModel&&(identical(other.userUid, userUid) || other.userUid == userUid)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.expireAt, expireAt) || other.expireAt == expireAt)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userUid,startAt,expireAt,subject,price);

@override
String toString() {
  return 'SubscriptionModel(userUid: $userUid, startAt: $startAt, expireAt: $expireAt, subject: $subject, price: $price)';
}


}

/// @nodoc
abstract mixin class $SubscriptionModelCopyWith<$Res>  {
  factory $SubscriptionModelCopyWith(SubscriptionModel value, $Res Function(SubscriptionModel) _then) = _$SubscriptionModelCopyWithImpl;
@useResult
$Res call({
 String? userUid,@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) DateTime startAt,@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) DateTime expireAt, String subject, double? price
});




}
/// @nodoc
class _$SubscriptionModelCopyWithImpl<$Res>
    implements $SubscriptionModelCopyWith<$Res> {
  _$SubscriptionModelCopyWithImpl(this._self, this._then);

  final SubscriptionModel _self;
  final $Res Function(SubscriptionModel) _then;

/// Create a copy of SubscriptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userUid = freezed,Object? startAt = null,Object? expireAt = null,Object? subject = null,Object? price = freezed,}) {
  return _then(_self.copyWith(
userUid: freezed == userUid ? _self.userUid : userUid // ignore: cast_nullable_to_non_nullable
as String?,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,expireAt: null == expireAt ? _self.expireAt : expireAt // ignore: cast_nullable_to_non_nullable
as DateTime,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SubscriptionModel implements SubscriptionModel {
  const _SubscriptionModel({required this.userUid, @JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) required this.startAt, @JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) required this.expireAt, required this.subject, required this.price});
  factory _SubscriptionModel.fromJson(Map<String, dynamic> json) => _$SubscriptionModelFromJson(json);

@override final  String? userUid;
@override@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) final  DateTime startAt;
@override@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) final  DateTime expireAt;
@override final  String subject;
@override final  double? price;

/// Create a copy of SubscriptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionModelCopyWith<_SubscriptionModel> get copyWith => __$SubscriptionModelCopyWithImpl<_SubscriptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionModel&&(identical(other.userUid, userUid) || other.userUid == userUid)&&(identical(other.startAt, startAt) || other.startAt == startAt)&&(identical(other.expireAt, expireAt) || other.expireAt == expireAt)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userUid,startAt,expireAt,subject,price);

@override
String toString() {
  return 'SubscriptionModel(userUid: $userUid, startAt: $startAt, expireAt: $expireAt, subject: $subject, price: $price)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionModelCopyWith<$Res> implements $SubscriptionModelCopyWith<$Res> {
  factory _$SubscriptionModelCopyWith(_SubscriptionModel value, $Res Function(_SubscriptionModel) _then) = __$SubscriptionModelCopyWithImpl;
@override @useResult
$Res call({
 String? userUid,@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) DateTime startAt,@JsonKey(fromJson: _timestampToDateTime, toJson: _dateTimeToTimestamp) DateTime expireAt, String subject, double? price
});




}
/// @nodoc
class __$SubscriptionModelCopyWithImpl<$Res>
    implements _$SubscriptionModelCopyWith<$Res> {
  __$SubscriptionModelCopyWithImpl(this._self, this._then);

  final _SubscriptionModel _self;
  final $Res Function(_SubscriptionModel) _then;

/// Create a copy of SubscriptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userUid = freezed,Object? startAt = null,Object? expireAt = null,Object? subject = null,Object? price = freezed,}) {
  return _then(_SubscriptionModel(
userUid: freezed == userUid ? _self.userUid : userUid // ignore: cast_nullable_to_non_nullable
as String?,startAt: null == startAt ? _self.startAt : startAt // ignore: cast_nullable_to_non_nullable
as DateTime,expireAt: null == expireAt ? _self.expireAt : expireAt // ignore: cast_nullable_to_non_nullable
as DateTime,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
