// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardingParams {

 List<String> get trainingDays; String get trainingPlan; String get trainingTime; bool get isMorning; Map<String, String>? get workoutNames;
/// Create a copy of OnboardingParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingParamsCopyWith<OnboardingParams> get copyWith => _$OnboardingParamsCopyWithImpl<OnboardingParams>(this as OnboardingParams, _$identity);

  /// Serializes this OnboardingParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingParams&&const DeepCollectionEquality().equals(other.trainingDays, trainingDays)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan)&&(identical(other.trainingTime, trainingTime) || other.trainingTime == trainingTime)&&(identical(other.isMorning, isMorning) || other.isMorning == isMorning)&&const DeepCollectionEquality().equals(other.workoutNames, workoutNames));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(trainingDays),trainingPlan,trainingTime,isMorning,const DeepCollectionEquality().hash(workoutNames));

@override
String toString() {
  return 'OnboardingParams(trainingDays: $trainingDays, trainingPlan: $trainingPlan, trainingTime: $trainingTime, isMorning: $isMorning, workoutNames: $workoutNames)';
}


}

/// @nodoc
abstract mixin class $OnboardingParamsCopyWith<$Res>  {
  factory $OnboardingParamsCopyWith(OnboardingParams value, $Res Function(OnboardingParams) _then) = _$OnboardingParamsCopyWithImpl;
@useResult
$Res call({
 List<String> trainingDays, String trainingPlan, String trainingTime, bool isMorning, Map<String, String>? workoutNames
});




}
/// @nodoc
class _$OnboardingParamsCopyWithImpl<$Res>
    implements $OnboardingParamsCopyWith<$Res> {
  _$OnboardingParamsCopyWithImpl(this._self, this._then);

  final OnboardingParams _self;
  final $Res Function(OnboardingParams) _then;

/// Create a copy of OnboardingParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trainingDays = null,Object? trainingPlan = null,Object? trainingTime = null,Object? isMorning = null,Object? workoutNames = freezed,}) {
  return _then(_self.copyWith(
trainingDays: null == trainingDays ? _self.trainingDays : trainingDays // ignore: cast_nullable_to_non_nullable
as List<String>,trainingPlan: null == trainingPlan ? _self.trainingPlan : trainingPlan // ignore: cast_nullable_to_non_nullable
as String,trainingTime: null == trainingTime ? _self.trainingTime : trainingTime // ignore: cast_nullable_to_non_nullable
as String,isMorning: null == isMorning ? _self.isMorning : isMorning // ignore: cast_nullable_to_non_nullable
as bool,workoutNames: freezed == workoutNames ? _self.workoutNames : workoutNames // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OnboardingParams].
extension OnboardingParamsPatterns on OnboardingParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnboardingParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnboardingParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnboardingParams value)  $default,){
final _that = this;
switch (_that) {
case _OnboardingParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnboardingParams value)?  $default,){
final _that = this;
switch (_that) {
case _OnboardingParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> trainingDays,  String trainingPlan,  String trainingTime,  bool isMorning,  Map<String, String>? workoutNames)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingParams() when $default != null:
return $default(_that.trainingDays,_that.trainingPlan,_that.trainingTime,_that.isMorning,_that.workoutNames);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> trainingDays,  String trainingPlan,  String trainingTime,  bool isMorning,  Map<String, String>? workoutNames)  $default,) {final _that = this;
switch (_that) {
case _OnboardingParams():
return $default(_that.trainingDays,_that.trainingPlan,_that.trainingTime,_that.isMorning,_that.workoutNames);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> trainingDays,  String trainingPlan,  String trainingTime,  bool isMorning,  Map<String, String>? workoutNames)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingParams() when $default != null:
return $default(_that.trainingDays,_that.trainingPlan,_that.trainingTime,_that.isMorning,_that.workoutNames);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnboardingParams implements OnboardingParams {
  const _OnboardingParams({required final  List<String> trainingDays, required this.trainingPlan, required this.trainingTime, required this.isMorning, final  Map<String, String>? workoutNames}): _trainingDays = trainingDays,_workoutNames = workoutNames;
  factory _OnboardingParams.fromJson(Map<String, dynamic> json) => _$OnboardingParamsFromJson(json);

 final  List<String> _trainingDays;
@override List<String> get trainingDays {
  if (_trainingDays is EqualUnmodifiableListView) return _trainingDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trainingDays);
}

@override final  String trainingPlan;
@override final  String trainingTime;
@override final  bool isMorning;
 final  Map<String, String>? _workoutNames;
@override Map<String, String>? get workoutNames {
  final value = _workoutNames;
  if (value == null) return null;
  if (_workoutNames is EqualUnmodifiableMapView) return _workoutNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of OnboardingParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnboardingParamsCopyWith<_OnboardingParams> get copyWith => __$OnboardingParamsCopyWithImpl<_OnboardingParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnboardingParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingParams&&const DeepCollectionEquality().equals(other._trainingDays, _trainingDays)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan)&&(identical(other.trainingTime, trainingTime) || other.trainingTime == trainingTime)&&(identical(other.isMorning, isMorning) || other.isMorning == isMorning)&&const DeepCollectionEquality().equals(other._workoutNames, _workoutNames));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trainingDays),trainingPlan,trainingTime,isMorning,const DeepCollectionEquality().hash(_workoutNames));

@override
String toString() {
  return 'OnboardingParams(trainingDays: $trainingDays, trainingPlan: $trainingPlan, trainingTime: $trainingTime, isMorning: $isMorning, workoutNames: $workoutNames)';
}


}

/// @nodoc
abstract mixin class _$OnboardingParamsCopyWith<$Res> implements $OnboardingParamsCopyWith<$Res> {
  factory _$OnboardingParamsCopyWith(_OnboardingParams value, $Res Function(_OnboardingParams) _then) = __$OnboardingParamsCopyWithImpl;
@override @useResult
$Res call({
 List<String> trainingDays, String trainingPlan, String trainingTime, bool isMorning, Map<String, String>? workoutNames
});




}
/// @nodoc
class __$OnboardingParamsCopyWithImpl<$Res>
    implements _$OnboardingParamsCopyWith<$Res> {
  __$OnboardingParamsCopyWithImpl(this._self, this._then);

  final _OnboardingParams _self;
  final $Res Function(_OnboardingParams) _then;

/// Create a copy of OnboardingParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trainingDays = null,Object? trainingPlan = null,Object? trainingTime = null,Object? isMorning = null,Object? workoutNames = freezed,}) {
  return _then(_OnboardingParams(
trainingDays: null == trainingDays ? _self._trainingDays : trainingDays // ignore: cast_nullable_to_non_nullable
as List<String>,trainingPlan: null == trainingPlan ? _self.trainingPlan : trainingPlan // ignore: cast_nullable_to_non_nullable
as String,trainingTime: null == trainingTime ? _self.trainingTime : trainingTime // ignore: cast_nullable_to_non_nullable
as String,isMorning: null == isMorning ? _self.isMorning : isMorning // ignore: cast_nullable_to_non_nullable
as bool,workoutNames: freezed == workoutNames ? _self._workoutNames : workoutNames // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

// dart format on
