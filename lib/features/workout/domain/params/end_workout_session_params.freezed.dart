// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'end_workout_session_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EndWorkoutSessionParams {

 WorkoutEntity get workout; DateTime get endTime;
/// Create a copy of EndWorkoutSessionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndWorkoutSessionParamsCopyWith<EndWorkoutSessionParams> get copyWith => _$EndWorkoutSessionParamsCopyWithImpl<EndWorkoutSessionParams>(this as EndWorkoutSessionParams, _$identity);

  /// Serializes this EndWorkoutSessionParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndWorkoutSessionParams&&(identical(other.workout, workout) || other.workout == workout)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout,endTime);

@override
String toString() {
  return 'EndWorkoutSessionParams(workout: $workout, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class $EndWorkoutSessionParamsCopyWith<$Res>  {
  factory $EndWorkoutSessionParamsCopyWith(EndWorkoutSessionParams value, $Res Function(EndWorkoutSessionParams) _then) = _$EndWorkoutSessionParamsCopyWithImpl;
@useResult
$Res call({
 WorkoutEntity workout, DateTime endTime
});


$WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class _$EndWorkoutSessionParamsCopyWithImpl<$Res>
    implements $EndWorkoutSessionParamsCopyWith<$Res> {
  _$EndWorkoutSessionParamsCopyWithImpl(this._self, this._then);

  final EndWorkoutSessionParams _self;
  final $Res Function(EndWorkoutSessionParams) _then;

/// Create a copy of EndWorkoutSessionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workout = null,Object? endTime = null,}) {
  return _then(_self.copyWith(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of EndWorkoutSessionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}


/// Adds pattern-matching-related methods to [EndWorkoutSessionParams].
extension EndWorkoutSessionParamsPatterns on EndWorkoutSessionParams {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EndWorkoutSessionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EndWorkoutSessionParams() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EndWorkoutSessionParams value)  $default,){
final _that = this;
switch (_that) {
case _EndWorkoutSessionParams():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EndWorkoutSessionParams value)?  $default,){
final _that = this;
switch (_that) {
case _EndWorkoutSessionParams() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorkoutEntity workout,  DateTime endTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EndWorkoutSessionParams() when $default != null:
return $default(_that.workout,_that.endTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorkoutEntity workout,  DateTime endTime)  $default,) {final _that = this;
switch (_that) {
case _EndWorkoutSessionParams():
return $default(_that.workout,_that.endTime);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorkoutEntity workout,  DateTime endTime)?  $default,) {final _that = this;
switch (_that) {
case _EndWorkoutSessionParams() when $default != null:
return $default(_that.workout,_that.endTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EndWorkoutSessionParams implements EndWorkoutSessionParams {
  const _EndWorkoutSessionParams({required this.workout, required this.endTime});
  factory _EndWorkoutSessionParams.fromJson(Map<String, dynamic> json) => _$EndWorkoutSessionParamsFromJson(json);

@override final  WorkoutEntity workout;
@override final  DateTime endTime;

/// Create a copy of EndWorkoutSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndWorkoutSessionParamsCopyWith<_EndWorkoutSessionParams> get copyWith => __$EndWorkoutSessionParamsCopyWithImpl<_EndWorkoutSessionParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EndWorkoutSessionParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndWorkoutSessionParams&&(identical(other.workout, workout) || other.workout == workout)&&(identical(other.endTime, endTime) || other.endTime == endTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout,endTime);

@override
String toString() {
  return 'EndWorkoutSessionParams(workout: $workout, endTime: $endTime)';
}


}

/// @nodoc
abstract mixin class _$EndWorkoutSessionParamsCopyWith<$Res> implements $EndWorkoutSessionParamsCopyWith<$Res> {
  factory _$EndWorkoutSessionParamsCopyWith(_EndWorkoutSessionParams value, $Res Function(_EndWorkoutSessionParams) _then) = __$EndWorkoutSessionParamsCopyWithImpl;
@override @useResult
$Res call({
 WorkoutEntity workout, DateTime endTime
});


@override $WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class __$EndWorkoutSessionParamsCopyWithImpl<$Res>
    implements _$EndWorkoutSessionParamsCopyWith<$Res> {
  __$EndWorkoutSessionParamsCopyWithImpl(this._self, this._then);

  final _EndWorkoutSessionParams _self;
  final $Res Function(_EndWorkoutSessionParams) _then;

/// Create a copy of EndWorkoutSessionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workout = null,Object? endTime = null,}) {
  return _then(_EndWorkoutSessionParams(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of EndWorkoutSessionParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}

// dart format on
