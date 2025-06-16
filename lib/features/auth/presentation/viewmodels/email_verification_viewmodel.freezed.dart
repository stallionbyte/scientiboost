// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmailVerificationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState()';
}


}

/// @nodoc
class $EmailVerificationStateCopyWith<$Res>  {
$EmailVerificationStateCopyWith(EmailVerificationState _, $Res Function(EmailVerificationState) __);
}


/// @nodoc


class EmailVerificationInitial implements EmailVerificationState {
  const EmailVerificationInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.emailVerificationInitial()';
}


}




/// @nodoc


class EmailVerificationLoading implements EmailVerificationState {
  const EmailVerificationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.emailVerificationLoading()';
}


}




/// @nodoc


class EmailVerificationEmailSent implements EmailVerificationState {
  const EmailVerificationEmailSent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationEmailSent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EmailVerificationState.emailVerificationEmailSent()';
}


}




/// @nodoc


class EmailVerificationError implements EmailVerificationState {
  const EmailVerificationError(this.message);
  

 final  String message;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailVerificationErrorCopyWith<EmailVerificationError> get copyWith => _$EmailVerificationErrorCopyWithImpl<EmailVerificationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailVerificationError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'EmailVerificationState.emailVerificationError(message: $message)';
}


}

/// @nodoc
abstract mixin class $EmailVerificationErrorCopyWith<$Res> implements $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationErrorCopyWith(EmailVerificationError value, $Res Function(EmailVerificationError) _then) = _$EmailVerificationErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$EmailVerificationErrorCopyWithImpl<$Res>
    implements $EmailVerificationErrorCopyWith<$Res> {
  _$EmailVerificationErrorCopyWithImpl(this._self, this._then);

  final EmailVerificationError _self;
  final $Res Function(EmailVerificationError) _then;

/// Create a copy of EmailVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(EmailVerificationError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
