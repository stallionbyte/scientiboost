// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exo_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExoState()';
}


}

/// @nodoc
class $ExoStateCopyWith<$Res>  {
$ExoStateCopyWith(ExoState _, $Res Function(ExoState) __);
}


/// @nodoc


class ExoInitial implements ExoState {
  const ExoInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExoInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExoState.exoInitial()';
}


}




/// @nodoc


class ExoLoading implements ExoState {
  const ExoLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExoLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExoState.exoLoading()';
}


}




/// @nodoc


class ExoError implements ExoState {
  const ExoError(this.error);
  

 final  String error;

/// Create a copy of ExoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExoErrorCopyWith<ExoError> get copyWith => _$ExoErrorCopyWithImpl<ExoError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExoError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ExoState.exoError(error: $error)';
}


}

/// @nodoc
abstract mixin class $ExoErrorCopyWith<$Res> implements $ExoStateCopyWith<$Res> {
  factory $ExoErrorCopyWith(ExoError value, $Res Function(ExoError) _then) = _$ExoErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ExoErrorCopyWithImpl<$Res>
    implements $ExoErrorCopyWith<$Res> {
  _$ExoErrorCopyWithImpl(this._self, this._then);

  final ExoError _self;
  final $Res Function(ExoError) _then;

/// Create a copy of ExoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ExoError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
