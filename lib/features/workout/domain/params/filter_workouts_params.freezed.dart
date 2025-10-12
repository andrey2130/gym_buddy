// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_workouts_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilterWorkoutsParams {

 List<WorkoutEntity> get workouts; WorkoutFilterType get filterType;
/// Create a copy of FilterWorkoutsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterWorkoutsParamsCopyWith<FilterWorkoutsParams> get copyWith => _$FilterWorkoutsParamsCopyWithImpl<FilterWorkoutsParams>(this as FilterWorkoutsParams, _$identity);

  /// Serializes this FilterWorkoutsParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterWorkoutsParams&&const DeepCollectionEquality().equals(other.workouts, workouts)&&(identical(other.filterType, filterType) || other.filterType == filterType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(workouts),filterType);

@override
String toString() {
  return 'FilterWorkoutsParams(workouts: $workouts, filterType: $filterType)';
}


}

/// @nodoc
abstract mixin class $FilterWorkoutsParamsCopyWith<$Res>  {
  factory $FilterWorkoutsParamsCopyWith(FilterWorkoutsParams value, $Res Function(FilterWorkoutsParams) _then) = _$FilterWorkoutsParamsCopyWithImpl;
@useResult
$Res call({
 List<WorkoutEntity> workouts, WorkoutFilterType filterType
});




}
/// @nodoc
class _$FilterWorkoutsParamsCopyWithImpl<$Res>
    implements $FilterWorkoutsParamsCopyWith<$Res> {
  _$FilterWorkoutsParamsCopyWithImpl(this._self, this._then);

  final FilterWorkoutsParams _self;
  final $Res Function(FilterWorkoutsParams) _then;

/// Create a copy of FilterWorkoutsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workouts = null,Object? filterType = null,}) {
  return _then(_self.copyWith(
workouts: null == workouts ? _self.workouts : workouts // ignore: cast_nullable_to_non_nullable
as List<WorkoutEntity>,filterType: null == filterType ? _self.filterType : filterType // ignore: cast_nullable_to_non_nullable
as WorkoutFilterType,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterWorkoutsParams].
extension FilterWorkoutsParamsPatterns on FilterWorkoutsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterWorkoutsParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterWorkoutsParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterWorkoutsParams value)  $default,){
final _that = this;
switch (_that) {
case _FilterWorkoutsParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterWorkoutsParams value)?  $default,){
final _that = this;
switch (_that) {
case _FilterWorkoutsParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WorkoutEntity> workouts,  WorkoutFilterType filterType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterWorkoutsParams() when $default != null:
return $default(_that.workouts,_that.filterType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WorkoutEntity> workouts,  WorkoutFilterType filterType)  $default,) {final _that = this;
switch (_that) {
case _FilterWorkoutsParams():
return $default(_that.workouts,_that.filterType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WorkoutEntity> workouts,  WorkoutFilterType filterType)?  $default,) {final _that = this;
switch (_that) {
case _FilterWorkoutsParams() when $default != null:
return $default(_that.workouts,_that.filterType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilterWorkoutsParams implements FilterWorkoutsParams {
  const _FilterWorkoutsParams({required final  List<WorkoutEntity> workouts, required this.filterType}): _workouts = workouts;
  factory _FilterWorkoutsParams.fromJson(Map<String, dynamic> json) => _$FilterWorkoutsParamsFromJson(json);

 final  List<WorkoutEntity> _workouts;
@override List<WorkoutEntity> get workouts {
  if (_workouts is EqualUnmodifiableListView) return _workouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workouts);
}

@override final  WorkoutFilterType filterType;

/// Create a copy of FilterWorkoutsParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterWorkoutsParamsCopyWith<_FilterWorkoutsParams> get copyWith => __$FilterWorkoutsParamsCopyWithImpl<_FilterWorkoutsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilterWorkoutsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterWorkoutsParams&&const DeepCollectionEquality().equals(other._workouts, _workouts)&&(identical(other.filterType, filterType) || other.filterType == filterType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workouts),filterType);

@override
String toString() {
  return 'FilterWorkoutsParams(workouts: $workouts, filterType: $filterType)';
}


}

/// @nodoc
abstract mixin class _$FilterWorkoutsParamsCopyWith<$Res> implements $FilterWorkoutsParamsCopyWith<$Res> {
  factory _$FilterWorkoutsParamsCopyWith(_FilterWorkoutsParams value, $Res Function(_FilterWorkoutsParams) _then) = __$FilterWorkoutsParamsCopyWithImpl;
@override @useResult
$Res call({
 List<WorkoutEntity> workouts, WorkoutFilterType filterType
});




}
/// @nodoc
class __$FilterWorkoutsParamsCopyWithImpl<$Res>
    implements _$FilterWorkoutsParamsCopyWith<$Res> {
  __$FilterWorkoutsParamsCopyWithImpl(this._self, this._then);

  final _FilterWorkoutsParams _self;
  final $Res Function(_FilterWorkoutsParams) _then;

/// Create a copy of FilterWorkoutsParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workouts = null,Object? filterType = null,}) {
  return _then(_FilterWorkoutsParams(
workouts: null == workouts ? _self._workouts : workouts // ignore: cast_nullable_to_non_nullable
as List<WorkoutEntity>,filterType: null == filterType ? _self.filterType : filterType // ignore: cast_nullable_to_non_nullable
as WorkoutFilterType,
  ));
}


}

// dart format on
