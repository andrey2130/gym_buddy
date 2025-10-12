// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_stats_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserStatsParams {

 String get uid; int get totalWorkouts; int get totalReps;
/// Create a copy of UpdateUserStatsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserStatsParamsCopyWith<UpdateUserStatsParams> get copyWith => _$UpdateUserStatsParamsCopyWithImpl<UpdateUserStatsParams>(this as UpdateUserStatsParams, _$identity);

  /// Serializes this UpdateUserStatsParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserStatsParams&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.totalReps, totalReps) || other.totalReps == totalReps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,totalWorkouts,totalReps);

@override
String toString() {
  return 'UpdateUserStatsParams(uid: $uid, totalWorkouts: $totalWorkouts, totalReps: $totalReps)';
}


}

/// @nodoc
abstract mixin class $UpdateUserStatsParamsCopyWith<$Res>  {
  factory $UpdateUserStatsParamsCopyWith(UpdateUserStatsParams value, $Res Function(UpdateUserStatsParams) _then) = _$UpdateUserStatsParamsCopyWithImpl;
@useResult
$Res call({
 String uid, int totalWorkouts, int totalReps
});




}
/// @nodoc
class _$UpdateUserStatsParamsCopyWithImpl<$Res>
    implements $UpdateUserStatsParamsCopyWith<$Res> {
  _$UpdateUserStatsParamsCopyWithImpl(this._self, this._then);

  final UpdateUserStatsParams _self;
  final $Res Function(UpdateUserStatsParams) _then;

/// Create a copy of UpdateUserStatsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? totalWorkouts = null,Object? totalReps = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,totalWorkouts: null == totalWorkouts ? _self.totalWorkouts : totalWorkouts // ignore: cast_nullable_to_non_nullable
as int,totalReps: null == totalReps ? _self.totalReps : totalReps // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateUserStatsParams].
extension UpdateUserStatsParamsPatterns on UpdateUserStatsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserStatsParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserStatsParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserStatsParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserStatsParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserStatsParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserStatsParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  int totalWorkouts,  int totalReps)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUserStatsParams() when $default != null:
return $default(_that.uid,_that.totalWorkouts,_that.totalReps);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  int totalWorkouts,  int totalReps)  $default,) {final _that = this;
switch (_that) {
case _UpdateUserStatsParams():
return $default(_that.uid,_that.totalWorkouts,_that.totalReps);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  int totalWorkouts,  int totalReps)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUserStatsParams() when $default != null:
return $default(_that.uid,_that.totalWorkouts,_that.totalReps);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateUserStatsParams implements UpdateUserStatsParams {
  const _UpdateUserStatsParams({required this.uid, required this.totalWorkouts, required this.totalReps});
  factory _UpdateUserStatsParams.fromJson(Map<String, dynamic> json) => _$UpdateUserStatsParamsFromJson(json);

@override final  String uid;
@override final  int totalWorkouts;
@override final  int totalReps;

/// Create a copy of UpdateUserStatsParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserStatsParamsCopyWith<_UpdateUserStatsParams> get copyWith => __$UpdateUserStatsParamsCopyWithImpl<_UpdateUserStatsParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateUserStatsParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserStatsParams&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.totalReps, totalReps) || other.totalReps == totalReps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,totalWorkouts,totalReps);

@override
String toString() {
  return 'UpdateUserStatsParams(uid: $uid, totalWorkouts: $totalWorkouts, totalReps: $totalReps)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserStatsParamsCopyWith<$Res> implements $UpdateUserStatsParamsCopyWith<$Res> {
  factory _$UpdateUserStatsParamsCopyWith(_UpdateUserStatsParams value, $Res Function(_UpdateUserStatsParams) _then) = __$UpdateUserStatsParamsCopyWithImpl;
@override @useResult
$Res call({
 String uid, int totalWorkouts, int totalReps
});




}
/// @nodoc
class __$UpdateUserStatsParamsCopyWithImpl<$Res>
    implements _$UpdateUserStatsParamsCopyWith<$Res> {
  __$UpdateUserStatsParamsCopyWithImpl(this._self, this._then);

  final _UpdateUserStatsParams _self;
  final $Res Function(_UpdateUserStatsParams) _then;

/// Create a copy of UpdateUserStatsParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? totalWorkouts = null,Object? totalReps = null,}) {
  return _then(_UpdateUserStatsParams(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,totalWorkouts: null == totalWorkouts ? _self.totalWorkouts : totalWorkouts // ignore: cast_nullable_to_non_nullable
as int,totalReps: null == totalReps ? _self.totalReps : totalReps // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
