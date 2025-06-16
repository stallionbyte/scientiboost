// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PasswordResetState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PasswordResetState()';
}


}

/// @nodoc
class $PasswordResetStateCopyWith<$Res>  {
$PasswordResetStateCopyWith(PasswordResetState _, $Res Function(PasswordResetState) __);
}


/// @nodoc


class PasswordResetInitial implements PasswordResetState {
  const PasswordResetInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PasswordResetState.passwordResetInitial()';
}


}




/// @nodoc


class PasswordResetLoading implements PasswordResetState {
  const PasswordResetLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PasswordResetState.passwordResetLoading()';
}


}




/// @nodoc


class PasswordResetEmailSent implements PasswordResetState {
  const PasswordResetEmailSent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetEmailSent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PasswordResetState.passwordResetEmailSent()';
}


}




/// @nodoc


class PasswordResetError implements PasswordResetState {
  const PasswordResetError(this.message);
  

 final  String message;

/// Create a copy of PasswordResetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordResetErrorCopyWith<PasswordResetError> get copyWith => _$PasswordResetErrorCopyWithImpl<PasswordResetError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PasswordResetState.passwordResetError(message: $message)';
}


}

/// @nodoc
abstract mixin class $PasswordResetErrorCopyWith<$Res> implements $PasswordResetStateCopyWith<$Res> {
  factory $PasswordResetErrorCopyWith(PasswordResetError value, $Res Function(PasswordResetError) _then) = _$PasswordResetErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PasswordResetErrorCopyWithImpl<$Res>
    implements $PasswordResetErrorCopyWith<$Res> {
  _$PasswordResetErrorCopyWithImpl(this._self, this._then);

  final PasswordResetError _self;
  final $Res Function(PasswordResetError) _then;

/// Create a copy of PasswordResetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PasswordResetError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
