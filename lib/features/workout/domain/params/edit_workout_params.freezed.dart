// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_workout_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditWorkoutParams {

 WorkoutEntity get workout;
/// Create a copy of EditWorkoutParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditWorkoutParamsCopyWith<EditWorkoutParams> get copyWith => _$EditWorkoutParamsCopyWithImpl<EditWorkoutParams>(this as EditWorkoutParams, _$identity);

  /// Serializes this EditWorkoutParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditWorkoutParams&&(identical(other.workout, workout) || other.workout == workout));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout);

@override
String toString() {
  return 'EditWorkoutParams(workout: $workout)';
}


}

/// @nodoc
abstract mixin class $EditWorkoutParamsCopyWith<$Res>  {
  factory $EditWorkoutParamsCopyWith(EditWorkoutParams value, $Res Function(EditWorkoutParams) _then) = _$EditWorkoutParamsCopyWithImpl;
@useResult
$Res call({
 WorkoutEntity workout
});


$WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class _$EditWorkoutParamsCopyWithImpl<$Res>
    implements $EditWorkoutParamsCopyWith<$Res> {
  _$EditWorkoutParamsCopyWithImpl(this._self, this._then);

  final EditWorkoutParams _self;
  final $Res Function(EditWorkoutParams) _then;

/// Create a copy of EditWorkoutParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workout = null,}) {
  return _then(_self.copyWith(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,
  ));
}
/// Create a copy of EditWorkoutParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}


/// Adds pattern-matching-related methods to [EditWorkoutParams].
extension EditWorkoutParamsPatterns on EditWorkoutParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditWorkoutParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditWorkoutParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditWorkoutParams value)  $default,){
final _that = this;
switch (_that) {
case _EditWorkoutParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditWorkoutParams value)?  $default,){
final _that = this;
switch (_that) {
case _EditWorkoutParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorkoutEntity workout)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditWorkoutParams() when $default != null:
return $default(_that.workout);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorkoutEntity workout)  $default,) {final _that = this;
switch (_that) {
case _EditWorkoutParams():
return $default(_that.workout);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorkoutEntity workout)?  $default,) {final _that = this;
switch (_that) {
case _EditWorkoutParams() when $default != null:
return $default(_that.workout);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditWorkoutParams implements EditWorkoutParams {
  const _EditWorkoutParams({required this.workout});
  factory _EditWorkoutParams.fromJson(Map<String, dynamic> json) => _$EditWorkoutParamsFromJson(json);

@override final  WorkoutEntity workout;

/// Create a copy of EditWorkoutParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditWorkoutParamsCopyWith<_EditWorkoutParams> get copyWith => __$EditWorkoutParamsCopyWithImpl<_EditWorkoutParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditWorkoutParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditWorkoutParams&&(identical(other.workout, workout) || other.workout == workout));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout);

@override
String toString() {
  return 'EditWorkoutParams(workout: $workout)';
}


}

/// @nodoc
abstract mixin class _$EditWorkoutParamsCopyWith<$Res> implements $EditWorkoutParamsCopyWith<$Res> {
  factory _$EditWorkoutParamsCopyWith(_EditWorkoutParams value, $Res Function(_EditWorkoutParams) _then) = __$EditWorkoutParamsCopyWithImpl;
@override @useResult
$Res call({
 WorkoutEntity workout
});


@override $WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class __$EditWorkoutParamsCopyWithImpl<$Res>
    implements _$EditWorkoutParamsCopyWith<$Res> {
  __$EditWorkoutParamsCopyWithImpl(this._self, this._then);

  final _EditWorkoutParams _self;
  final $Res Function(_EditWorkoutParams) _then;

/// Create a copy of EditWorkoutParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workout = null,}) {
  return _then(_EditWorkoutParams(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,
  ));
}

/// Create a copy of EditWorkoutParams
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
