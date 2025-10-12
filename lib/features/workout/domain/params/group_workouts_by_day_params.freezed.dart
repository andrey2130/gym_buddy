// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_workouts_by_day_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupWorkoutsByDayParams {

 List<WorkoutEntity> get workouts;
/// Create a copy of GroupWorkoutsByDayParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupWorkoutsByDayParamsCopyWith<GroupWorkoutsByDayParams> get copyWith => _$GroupWorkoutsByDayParamsCopyWithImpl<GroupWorkoutsByDayParams>(this as GroupWorkoutsByDayParams, _$identity);

  /// Serializes this GroupWorkoutsByDayParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupWorkoutsByDayParams&&const DeepCollectionEquality().equals(other.workouts, workouts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(workouts));

@override
String toString() {
  return 'GroupWorkoutsByDayParams(workouts: $workouts)';
}


}

/// @nodoc
abstract mixin class $GroupWorkoutsByDayParamsCopyWith<$Res>  {
  factory $GroupWorkoutsByDayParamsCopyWith(GroupWorkoutsByDayParams value, $Res Function(GroupWorkoutsByDayParams) _then) = _$GroupWorkoutsByDayParamsCopyWithImpl;
@useResult
$Res call({
 List<WorkoutEntity> workouts
});




}
/// @nodoc
class _$GroupWorkoutsByDayParamsCopyWithImpl<$Res>
    implements $GroupWorkoutsByDayParamsCopyWith<$Res> {
  _$GroupWorkoutsByDayParamsCopyWithImpl(this._self, this._then);

  final GroupWorkoutsByDayParams _self;
  final $Res Function(GroupWorkoutsByDayParams) _then;

/// Create a copy of GroupWorkoutsByDayParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workouts = null,}) {
  return _then(_self.copyWith(
workouts: null == workouts ? _self.workouts : workouts // ignore: cast_nullable_to_non_nullable
as List<WorkoutEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupWorkoutsByDayParams].
extension GroupWorkoutsByDayParamsPatterns on GroupWorkoutsByDayParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupWorkoutsByDayParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupWorkoutsByDayParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupWorkoutsByDayParams value)  $default,){
final _that = this;
switch (_that) {
case _GroupWorkoutsByDayParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupWorkoutsByDayParams value)?  $default,){
final _that = this;
switch (_that) {
case _GroupWorkoutsByDayParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WorkoutEntity> workouts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupWorkoutsByDayParams() when $default != null:
return $default(_that.workouts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WorkoutEntity> workouts)  $default,) {final _that = this;
switch (_that) {
case _GroupWorkoutsByDayParams():
return $default(_that.workouts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WorkoutEntity> workouts)?  $default,) {final _that = this;
switch (_that) {
case _GroupWorkoutsByDayParams() when $default != null:
return $default(_that.workouts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupWorkoutsByDayParams implements GroupWorkoutsByDayParams {
  const _GroupWorkoutsByDayParams({required final  List<WorkoutEntity> workouts}): _workouts = workouts;
  factory _GroupWorkoutsByDayParams.fromJson(Map<String, dynamic> json) => _$GroupWorkoutsByDayParamsFromJson(json);

 final  List<WorkoutEntity> _workouts;
@override List<WorkoutEntity> get workouts {
  if (_workouts is EqualUnmodifiableListView) return _workouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workouts);
}


/// Create a copy of GroupWorkoutsByDayParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupWorkoutsByDayParamsCopyWith<_GroupWorkoutsByDayParams> get copyWith => __$GroupWorkoutsByDayParamsCopyWithImpl<_GroupWorkoutsByDayParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupWorkoutsByDayParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupWorkoutsByDayParams&&const DeepCollectionEquality().equals(other._workouts, _workouts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workouts));

@override
String toString() {
  return 'GroupWorkoutsByDayParams(workouts: $workouts)';
}


}

/// @nodoc
abstract mixin class _$GroupWorkoutsByDayParamsCopyWith<$Res> implements $GroupWorkoutsByDayParamsCopyWith<$Res> {
  factory _$GroupWorkoutsByDayParamsCopyWith(_GroupWorkoutsByDayParams value, $Res Function(_GroupWorkoutsByDayParams) _then) = __$GroupWorkoutsByDayParamsCopyWithImpl;
@override @useResult
$Res call({
 List<WorkoutEntity> workouts
});




}
/// @nodoc
class __$GroupWorkoutsByDayParamsCopyWithImpl<$Res>
    implements _$GroupWorkoutsByDayParamsCopyWith<$Res> {
  __$GroupWorkoutsByDayParamsCopyWithImpl(this._self, this._then);

  final _GroupWorkoutsByDayParams _self;
  final $Res Function(_GroupWorkoutsByDayParams) _then;

/// Create a copy of GroupWorkoutsByDayParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workouts = null,}) {
  return _then(_GroupWorkoutsByDayParams(
workouts: null == workouts ? _self._workouts : workouts // ignore: cast_nullable_to_non_nullable
as List<WorkoutEntity>,
  ));
}


}

// dart format on
