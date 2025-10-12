// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_exercise_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateExerciseParams {

 WorkoutEntity get workout; ExerciseEntity get exercise;
/// Create a copy of UpdateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateExerciseParamsCopyWith<UpdateExerciseParams> get copyWith => _$UpdateExerciseParamsCopyWithImpl<UpdateExerciseParams>(this as UpdateExerciseParams, _$identity);

  /// Serializes this UpdateExerciseParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateExerciseParams&&(identical(other.workout, workout) || other.workout == workout)&&(identical(other.exercise, exercise) || other.exercise == exercise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout,exercise);

@override
String toString() {
  return 'UpdateExerciseParams(workout: $workout, exercise: $exercise)';
}


}

/// @nodoc
abstract mixin class $UpdateExerciseParamsCopyWith<$Res>  {
  factory $UpdateExerciseParamsCopyWith(UpdateExerciseParams value, $Res Function(UpdateExerciseParams) _then) = _$UpdateExerciseParamsCopyWithImpl;
@useResult
$Res call({
 WorkoutEntity workout, ExerciseEntity exercise
});


$WorkoutEntityCopyWith<$Res> get workout;$ExerciseEntityCopyWith<$Res> get exercise;

}
/// @nodoc
class _$UpdateExerciseParamsCopyWithImpl<$Res>
    implements $UpdateExerciseParamsCopyWith<$Res> {
  _$UpdateExerciseParamsCopyWithImpl(this._self, this._then);

  final UpdateExerciseParams _self;
  final $Res Function(UpdateExerciseParams) _then;

/// Create a copy of UpdateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workout = null,Object? exercise = null,}) {
  return _then(_self.copyWith(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,exercise: null == exercise ? _self.exercise : exercise // ignore: cast_nullable_to_non_nullable
as ExerciseEntity,
  ));
}
/// Create a copy of UpdateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}/// Create a copy of UpdateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExerciseEntityCopyWith<$Res> get exercise {
  
  return $ExerciseEntityCopyWith<$Res>(_self.exercise, (value) {
    return _then(_self.copyWith(exercise: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateExerciseParams].
extension UpdateExerciseParamsPatterns on UpdateExerciseParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateExerciseParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateExerciseParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateExerciseParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateExerciseParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateExerciseParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateExerciseParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorkoutEntity workout,  ExerciseEntity exercise)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateExerciseParams() when $default != null:
return $default(_that.workout,_that.exercise);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorkoutEntity workout,  ExerciseEntity exercise)  $default,) {final _that = this;
switch (_that) {
case _UpdateExerciseParams():
return $default(_that.workout,_that.exercise);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorkoutEntity workout,  ExerciseEntity exercise)?  $default,) {final _that = this;
switch (_that) {
case _UpdateExerciseParams() when $default != null:
return $default(_that.workout,_that.exercise);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateExerciseParams implements UpdateExerciseParams {
  const _UpdateExerciseParams({required this.workout, required this.exercise});
  factory _UpdateExerciseParams.fromJson(Map<String, dynamic> json) => _$UpdateExerciseParamsFromJson(json);

@override final  WorkoutEntity workout;
@override final  ExerciseEntity exercise;

/// Create a copy of UpdateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateExerciseParamsCopyWith<_UpdateExerciseParams> get copyWith => __$UpdateExerciseParamsCopyWithImpl<_UpdateExerciseParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateExerciseParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateExerciseParams&&(identical(other.workout, workout) || other.workout == workout)&&(identical(other.exercise, exercise) || other.exercise == exercise));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout,exercise);

@override
String toString() {
  return 'UpdateExerciseParams(workout: $workout, exercise: $exercise)';
}


}

/// @nodoc
abstract mixin class _$UpdateExerciseParamsCopyWith<$Res> implements $UpdateExerciseParamsCopyWith<$Res> {
  factory _$UpdateExerciseParamsCopyWith(_UpdateExerciseParams value, $Res Function(_UpdateExerciseParams) _then) = __$UpdateExerciseParamsCopyWithImpl;
@override @useResult
$Res call({
 WorkoutEntity workout, ExerciseEntity exercise
});


@override $WorkoutEntityCopyWith<$Res> get workout;@override $ExerciseEntityCopyWith<$Res> get exercise;

}
/// @nodoc
class __$UpdateExerciseParamsCopyWithImpl<$Res>
    implements _$UpdateExerciseParamsCopyWith<$Res> {
  __$UpdateExerciseParamsCopyWithImpl(this._self, this._then);

  final _UpdateExerciseParams _self;
  final $Res Function(_UpdateExerciseParams) _then;

/// Create a copy of UpdateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workout = null,Object? exercise = null,}) {
  return _then(_UpdateExerciseParams(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,exercise: null == exercise ? _self.exercise : exercise // ignore: cast_nullable_to_non_nullable
as ExerciseEntity,
  ));
}

/// Create a copy of UpdateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}/// Create a copy of UpdateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExerciseEntityCopyWith<$Res> get exercise {
  
  return $ExerciseEntityCopyWith<$Res>(_self.exercise, (value) {
    return _then(_self.copyWith(exercise: value));
  });
}
}

// dart format on
