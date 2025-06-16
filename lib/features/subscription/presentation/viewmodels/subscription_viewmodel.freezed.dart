// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubscriptionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionState()';
}


}

/// @nodoc
class $SubscriptionStateCopyWith<$Res>  {
$SubscriptionStateCopyWith(SubscriptionState _, $Res Function(SubscriptionState) __);
}


/// @nodoc


class SubscriptionInitial implements SubscriptionState {
  const SubscriptionInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionState.subscriptionInitial()';
}


}




/// @nodoc


class SubscriptionLoading implements SubscriptionState {
  const SubscriptionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionState.subscriptionLoading()';
}


}




/// @nodoc


class SubscriptionInit implements SubscriptionState {
  const SubscriptionInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionState.subscriptionInit()';
}


}




/// @nodoc


class SubscriptionPending implements SubscriptionState {
  const SubscriptionPending(this.subscription);
  

 final  SubscriptionModel subscription;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionPendingCopyWith<SubscriptionPending> get copyWith => _$SubscriptionPendingCopyWithImpl<SubscriptionPending>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionPending&&(identical(other.subscription, subscription) || other.subscription == subscription));
}


@override
int get hashCode => Object.hash(runtimeType,subscription);

@override
String toString() {
  return 'SubscriptionState.subscriptionPending(subscription: $subscription)';
}


}

/// @nodoc
abstract mixin class $SubscriptionPendingCopyWith<$Res> implements $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionPendingCopyWith(SubscriptionPending value, $Res Function(SubscriptionPending) _then) = _$SubscriptionPendingCopyWithImpl;
@useResult
$Res call({
 SubscriptionModel subscription
});


$SubscriptionModelCopyWith<$Res> get subscription;

}
/// @nodoc
class _$SubscriptionPendingCopyWithImpl<$Res>
    implements $SubscriptionPendingCopyWith<$Res> {
  _$SubscriptionPendingCopyWithImpl(this._self, this._then);

  final SubscriptionPending _self;
  final $Res Function(SubscriptionPending) _then;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? subscription = null,}) {
  return _then(SubscriptionPending(
null == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as SubscriptionModel,
  ));
}

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionModelCopyWith<$Res> get subscription {
  
  return $SubscriptionModelCopyWith<$Res>(_self.subscription, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}
}

/// @nodoc


class Unsubscribed implements SubscriptionState {
  const Unsubscribed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unsubscribed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscriptionState.unsubscribed()';
}


}




/// @nodoc


class Subscribed implements SubscriptionState {
  const Subscribed(this.subscription);
  

 final  SubscriptionModel subscription;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscribedCopyWith<Subscribed> get copyWith => _$SubscribedCopyWithImpl<Subscribed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subscribed&&(identical(other.subscription, subscription) || other.subscription == subscription));
}


@override
int get hashCode => Object.hash(runtimeType,subscription);

@override
String toString() {
  return 'SubscriptionState.subscribed(subscription: $subscription)';
}


}

/// @nodoc
abstract mixin class $SubscribedCopyWith<$Res> implements $SubscriptionStateCopyWith<$Res> {
  factory $SubscribedCopyWith(Subscribed value, $Res Function(Subscribed) _then) = _$SubscribedCopyWithImpl;
@useResult
$Res call({
 SubscriptionModel subscription
});


$SubscriptionModelCopyWith<$Res> get subscription;

}
/// @nodoc
class _$SubscribedCopyWithImpl<$Res>
    implements $SubscribedCopyWith<$Res> {
  _$SubscribedCopyWithImpl(this._self, this._then);

  final Subscribed _self;
  final $Res Function(Subscribed) _then;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? subscription = null,}) {
  return _then(Subscribed(
null == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as SubscriptionModel,
  ));
}

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionModelCopyWith<$Res> get subscription {
  
  return $SubscriptionModelCopyWith<$Res>(_self.subscription, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}
}

/// @nodoc


class SubscriptionError implements SubscriptionState {
  const SubscriptionError(this.message);
  

 final  String message;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionErrorCopyWith<SubscriptionError> get copyWith => _$SubscriptionErrorCopyWithImpl<SubscriptionError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubscriptionState.subscriptionError(message: $message)';
}


}

/// @nodoc
abstract mixin class $SubscriptionErrorCopyWith<$Res> implements $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionErrorCopyWith(SubscriptionError value, $Res Function(SubscriptionError) _then) = _$SubscriptionErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SubscriptionErrorCopyWithImpl<$Res>
    implements $SubscriptionErrorCopyWith<$Res> {
  _$SubscriptionErrorCopyWithImpl(this._self, this._then);

  final SubscriptionError _self;
  final $Res Function(SubscriptionError) _then;

/// Create a copy of SubscriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SubscriptionError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
