// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_exercise_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoveExerciseParams {

 WorkoutEntity get workout; String get exerciseId;
/// Create a copy of RemoveExerciseParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveExerciseParamsCopyWith<RemoveExerciseParams> get copyWith => _$RemoveExerciseParamsCopyWithImpl<RemoveExerciseParams>(this as RemoveExerciseParams, _$identity);

  /// Serializes this RemoveExerciseParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveExerciseParams&&(identical(other.workout, workout) || other.workout == workout)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout,exerciseId);

@override
String toString() {
  return 'RemoveExerciseParams(workout: $workout, exerciseId: $exerciseId)';
}


}

/// @nodoc
abstract mixin class $RemoveExerciseParamsCopyWith<$Res>  {
  factory $RemoveExerciseParamsCopyWith(RemoveExerciseParams value, $Res Function(RemoveExerciseParams) _then) = _$RemoveExerciseParamsCopyWithImpl;
@useResult
$Res call({
 WorkoutEntity workout, String exerciseId
});


$WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class _$RemoveExerciseParamsCopyWithImpl<$Res>
    implements $RemoveExerciseParamsCopyWith<$Res> {
  _$RemoveExerciseParamsCopyWithImpl(this._self, this._then);

  final RemoveExerciseParams _self;
  final $Res Function(RemoveExerciseParams) _then;

/// Create a copy of RemoveExerciseParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workout = null,Object? exerciseId = null,}) {
  return _then(_self.copyWith(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of RemoveExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}


/// Adds pattern-matching-related methods to [RemoveExerciseParams].
extension RemoveExerciseParamsPatterns on RemoveExerciseParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemoveExerciseParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemoveExerciseParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemoveExerciseParams value)  $default,){
final _that = this;
switch (_that) {
case _RemoveExerciseParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemoveExerciseParams value)?  $default,){
final _that = this;
switch (_that) {
case _RemoveExerciseParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorkoutEntity workout,  String exerciseId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemoveExerciseParams() when $default != null:
return $default(_that.workout,_that.exerciseId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorkoutEntity workout,  String exerciseId)  $default,) {final _that = this;
switch (_that) {
case _RemoveExerciseParams():
return $default(_that.workout,_that.exerciseId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorkoutEntity workout,  String exerciseId)?  $default,) {final _that = this;
switch (_that) {
case _RemoveExerciseParams() when $default != null:
return $default(_that.workout,_that.exerciseId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemoveExerciseParams implements RemoveExerciseParams {
  const _RemoveExerciseParams({required this.workout, required this.exerciseId});
  factory _RemoveExerciseParams.fromJson(Map<String, dynamic> json) => _$RemoveExerciseParamsFromJson(json);

@override final  WorkoutEntity workout;
@override final  String exerciseId;

/// Create a copy of RemoveExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveExerciseParamsCopyWith<_RemoveExerciseParams> get copyWith => __$RemoveExerciseParamsCopyWithImpl<_RemoveExerciseParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoveExerciseParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveExerciseParams&&(identical(other.workout, workout) || other.workout == workout)&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout,exerciseId);

@override
String toString() {
  return 'RemoveExerciseParams(workout: $workout, exerciseId: $exerciseId)';
}


}

/// @nodoc
abstract mixin class _$RemoveExerciseParamsCopyWith<$Res> implements $RemoveExerciseParamsCopyWith<$Res> {
  factory _$RemoveExerciseParamsCopyWith(_RemoveExerciseParams value, $Res Function(_RemoveExerciseParams) _then) = __$RemoveExerciseParamsCopyWithImpl;
@override @useResult
$Res call({
 WorkoutEntity workout, String exerciseId
});


@override $WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class __$RemoveExerciseParamsCopyWithImpl<$Res>
    implements _$RemoveExerciseParamsCopyWith<$Res> {
  __$RemoveExerciseParamsCopyWithImpl(this._self, this._then);

  final _RemoveExerciseParams _self;
  final $Res Function(_RemoveExerciseParams) _then;

/// Create a copy of RemoveExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workout = null,Object? exerciseId = null,}) {
  return _then(_RemoveExerciseParams(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RemoveExerciseParams
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
