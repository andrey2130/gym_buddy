// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_workout_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteWorkoutParams {

 String get userId; String get workoutId;
/// Create a copy of DeleteWorkoutParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteWorkoutParamsCopyWith<DeleteWorkoutParams> get copyWith => _$DeleteWorkoutParamsCopyWithImpl<DeleteWorkoutParams>(this as DeleteWorkoutParams, _$identity);

  /// Serializes this DeleteWorkoutParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteWorkoutParams&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.workoutId, workoutId) || other.workoutId == workoutId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,workoutId);

@override
String toString() {
  return 'DeleteWorkoutParams(userId: $userId, workoutId: $workoutId)';
}


}

/// @nodoc
abstract mixin class $DeleteWorkoutParamsCopyWith<$Res>  {
  factory $DeleteWorkoutParamsCopyWith(DeleteWorkoutParams value, $Res Function(DeleteWorkoutParams) _then) = _$DeleteWorkoutParamsCopyWithImpl;
@useResult
$Res call({
 String userId, String workoutId
});




}
/// @nodoc
class _$DeleteWorkoutParamsCopyWithImpl<$Res>
    implements $DeleteWorkoutParamsCopyWith<$Res> {
  _$DeleteWorkoutParamsCopyWithImpl(this._self, this._then);

  final DeleteWorkoutParams _self;
  final $Res Function(DeleteWorkoutParams) _then;

/// Create a copy of DeleteWorkoutParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? workoutId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,workoutId: null == workoutId ? _self.workoutId : workoutId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteWorkoutParams].
extension DeleteWorkoutParamsPatterns on DeleteWorkoutParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteWorkoutParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteWorkoutParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteWorkoutParams value)  $default,){
final _that = this;
switch (_that) {
case _DeleteWorkoutParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteWorkoutParams value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteWorkoutParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String workoutId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteWorkoutParams() when $default != null:
return $default(_that.userId,_that.workoutId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String workoutId)  $default,) {final _that = this;
switch (_that) {
case _DeleteWorkoutParams():
return $default(_that.userId,_that.workoutId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String workoutId)?  $default,) {final _that = this;
switch (_that) {
case _DeleteWorkoutParams() when $default != null:
return $default(_that.userId,_that.workoutId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteWorkoutParams implements DeleteWorkoutParams {
  const _DeleteWorkoutParams({required this.userId, required this.workoutId});
  factory _DeleteWorkoutParams.fromJson(Map<String, dynamic> json) => _$DeleteWorkoutParamsFromJson(json);

@override final  String userId;
@override final  String workoutId;

/// Create a copy of DeleteWorkoutParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteWorkoutParamsCopyWith<_DeleteWorkoutParams> get copyWith => __$DeleteWorkoutParamsCopyWithImpl<_DeleteWorkoutParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteWorkoutParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteWorkoutParams&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.workoutId, workoutId) || other.workoutId == workoutId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,workoutId);

@override
String toString() {
  return 'DeleteWorkoutParams(userId: $userId, workoutId: $workoutId)';
}


}

/// @nodoc
abstract mixin class _$DeleteWorkoutParamsCopyWith<$Res> implements $DeleteWorkoutParamsCopyWith<$Res> {
  factory _$DeleteWorkoutParamsCopyWith(_DeleteWorkoutParams value, $Res Function(_DeleteWorkoutParams) _then) = __$DeleteWorkoutParamsCopyWithImpl;
@override @useResult
$Res call({
 String userId, String workoutId
});




}
/// @nodoc
class __$DeleteWorkoutParamsCopyWithImpl<$Res>
    implements _$DeleteWorkoutParamsCopyWith<$Res> {
  __$DeleteWorkoutParamsCopyWithImpl(this._self, this._then);

  final _DeleteWorkoutParams _self;
  final $Res Function(_DeleteWorkoutParams) _then;

/// Create a copy of DeleteWorkoutParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? workoutId = null,}) {
  return _then(_DeleteWorkoutParams(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,workoutId: null == workoutId ? _self.workoutId : workoutId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
