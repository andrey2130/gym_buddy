// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_user_training_plan_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeUserTrainingPlanParams {

 String get uid; String get trainingPlan;
/// Create a copy of ChangeUserTrainingPlanParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeUserTrainingPlanParamsCopyWith<ChangeUserTrainingPlanParams> get copyWith => _$ChangeUserTrainingPlanParamsCopyWithImpl<ChangeUserTrainingPlanParams>(this as ChangeUserTrainingPlanParams, _$identity);

  /// Serializes this ChangeUserTrainingPlanParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeUserTrainingPlanParams&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,trainingPlan);

@override
String toString() {
  return 'ChangeUserTrainingPlanParams(uid: $uid, trainingPlan: $trainingPlan)';
}


}

/// @nodoc
abstract mixin class $ChangeUserTrainingPlanParamsCopyWith<$Res>  {
  factory $ChangeUserTrainingPlanParamsCopyWith(ChangeUserTrainingPlanParams value, $Res Function(ChangeUserTrainingPlanParams) _then) = _$ChangeUserTrainingPlanParamsCopyWithImpl;
@useResult
$Res call({
 String uid, String trainingPlan
});




}
/// @nodoc
class _$ChangeUserTrainingPlanParamsCopyWithImpl<$Res>
    implements $ChangeUserTrainingPlanParamsCopyWith<$Res> {
  _$ChangeUserTrainingPlanParamsCopyWithImpl(this._self, this._then);

  final ChangeUserTrainingPlanParams _self;
  final $Res Function(ChangeUserTrainingPlanParams) _then;

/// Create a copy of ChangeUserTrainingPlanParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? trainingPlan = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,trainingPlan: null == trainingPlan ? _self.trainingPlan : trainingPlan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeUserTrainingPlanParams].
extension ChangeUserTrainingPlanParamsPatterns on ChangeUserTrainingPlanParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeUserTrainingPlanParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeUserTrainingPlanParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeUserTrainingPlanParams value)  $default,){
final _that = this;
switch (_that) {
case _ChangeUserTrainingPlanParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeUserTrainingPlanParams value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeUserTrainingPlanParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String trainingPlan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeUserTrainingPlanParams() when $default != null:
return $default(_that.uid,_that.trainingPlan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String trainingPlan)  $default,) {final _that = this;
switch (_that) {
case _ChangeUserTrainingPlanParams():
return $default(_that.uid,_that.trainingPlan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String trainingPlan)?  $default,) {final _that = this;
switch (_that) {
case _ChangeUserTrainingPlanParams() when $default != null:
return $default(_that.uid,_that.trainingPlan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangeUserTrainingPlanParams implements ChangeUserTrainingPlanParams {
  const _ChangeUserTrainingPlanParams({required this.uid, required this.trainingPlan});
  factory _ChangeUserTrainingPlanParams.fromJson(Map<String, dynamic> json) => _$ChangeUserTrainingPlanParamsFromJson(json);

@override final  String uid;
@override final  String trainingPlan;

/// Create a copy of ChangeUserTrainingPlanParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeUserTrainingPlanParamsCopyWith<_ChangeUserTrainingPlanParams> get copyWith => __$ChangeUserTrainingPlanParamsCopyWithImpl<_ChangeUserTrainingPlanParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeUserTrainingPlanParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeUserTrainingPlanParams&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,trainingPlan);

@override
String toString() {
  return 'ChangeUserTrainingPlanParams(uid: $uid, trainingPlan: $trainingPlan)';
}


}

/// @nodoc
abstract mixin class _$ChangeUserTrainingPlanParamsCopyWith<$Res> implements $ChangeUserTrainingPlanParamsCopyWith<$Res> {
  factory _$ChangeUserTrainingPlanParamsCopyWith(_ChangeUserTrainingPlanParams value, $Res Function(_ChangeUserTrainingPlanParams) _then) = __$ChangeUserTrainingPlanParamsCopyWithImpl;
@override @useResult
$Res call({
 String uid, String trainingPlan
});




}
/// @nodoc
class __$ChangeUserTrainingPlanParamsCopyWithImpl<$Res>
    implements _$ChangeUserTrainingPlanParamsCopyWith<$Res> {
  __$ChangeUserTrainingPlanParamsCopyWithImpl(this._self, this._then);

  final _ChangeUserTrainingPlanParams _self;
  final $Res Function(_ChangeUserTrainingPlanParams) _then;

/// Create a copy of ChangeUserTrainingPlanParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? trainingPlan = null,}) {
  return _then(_ChangeUserTrainingPlanParams(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,trainingPlan: null == trainingPlan ? _self.trainingPlan : trainingPlan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
