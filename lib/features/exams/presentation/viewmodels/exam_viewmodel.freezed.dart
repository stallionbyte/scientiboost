// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExamState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExamState()';
}


}

/// @nodoc
class $ExamStateCopyWith<$Res>  {
$ExamStateCopyWith(ExamState _, $Res Function(ExamState) __);
}


/// @nodoc


class ExamInitial implements ExamState {
  const ExamInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExamState.examInitial()';
}


}




/// @nodoc


class ExamLoading implements ExamState {
  const ExamLoading(this.route);
  

 final  String route;

/// Create a copy of ExamState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamLoadingCopyWith<ExamLoading> get copyWith => _$ExamLoadingCopyWithImpl<ExamLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamLoading&&(identical(other.route, route) || other.route == route));
}


@override
int get hashCode => Object.hash(runtimeType,route);

@override
String toString() {
  return 'ExamState.examLoading(route: $route)';
}


}

/// @nodoc
abstract mixin class $ExamLoadingCopyWith<$Res> implements $ExamStateCopyWith<$Res> {
  factory $ExamLoadingCopyWith(ExamLoading value, $Res Function(ExamLoading) _then) = _$ExamLoadingCopyWithImpl;
@useResult
$Res call({
 String route
});




}
/// @nodoc
class _$ExamLoadingCopyWithImpl<$Res>
    implements $ExamLoadingCopyWith<$Res> {
  _$ExamLoadingCopyWithImpl(this._self, this._then);

  final ExamLoading _self;
  final $Res Function(ExamLoading) _then;

/// Create a copy of ExamState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? route = null,}) {
  return _then(ExamLoading(
null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ExamError implements ExamState {
  const ExamError(this.error);
  

 final  String error;

/// Create a copy of ExamState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamErrorCopyWith<ExamError> get copyWith => _$ExamErrorCopyWithImpl<ExamError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ExamState.examError(error: $error)';
}


}

/// @nodoc
abstract mixin class $ExamErrorCopyWith<$Res> implements $ExamStateCopyWith<$Res> {
  factory $ExamErrorCopyWith(ExamError value, $Res Function(ExamError) _then) = _$ExamErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ExamErrorCopyWithImpl<$Res>
    implements $ExamErrorCopyWith<$Res> {
  _$ExamErrorCopyWithImpl(this._self, this._then);

  final ExamError _self;
  final $Res Function(ExamError) _then;

/// Create a copy of ExamState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ExamError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
