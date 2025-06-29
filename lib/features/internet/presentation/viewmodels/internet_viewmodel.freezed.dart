// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InternetState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InternetState()';
}


}

/// @nodoc
class $InternetStateCopyWith<$Res>  {
$InternetStateCopyWith(InternetState _, $Res Function(InternetState) __);
}


/// @nodoc


class InternetInitial implements InternetState {
  const InternetInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InternetState.internetInitial()';
}


}




/// @nodoc


class InternetLoading implements InternetState {
  const InternetLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InternetState.internetLoading()';
}


}




/// @nodoc


class InternetIsConnected implements InternetState {
  const InternetIsConnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetIsConnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InternetState.internetIsConnected()';
}


}




/// @nodoc


class InternetIsNotConnected implements InternetState {
  const InternetIsNotConnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetIsNotConnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InternetState.internetIsNotConnected()';
}


}




/// @nodoc


class InternetError implements InternetState {
  const InternetError(this.message);
  

 final  String message;

/// Create a copy of InternetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InternetErrorCopyWith<InternetError> get copyWith => _$InternetErrorCopyWithImpl<InternetError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternetError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'InternetState.internetError(message: $message)';
}


}

/// @nodoc
abstract mixin class $InternetErrorCopyWith<$Res> implements $InternetStateCopyWith<$Res> {
  factory $InternetErrorCopyWith(InternetError value, $Res Function(InternetError) _then) = _$InternetErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$InternetErrorCopyWithImpl<$Res>
    implements $InternetErrorCopyWith<$Res> {
  _$InternetErrorCopyWithImpl(this._self, this._then);

  final InternetError _self;
  final $Res Function(InternetError) _then;

/// Create a copy of InternetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(InternetError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
