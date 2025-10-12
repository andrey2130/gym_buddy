// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_exercise_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateExerciseParams {

 String get exerciseId; String get name; int get setsCount; int get reps; double get weight;
/// Create a copy of CreateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateExerciseParamsCopyWith<CreateExerciseParams> get copyWith => _$CreateExerciseParamsCopyWithImpl<CreateExerciseParams>(this as CreateExerciseParams, _$identity);

  /// Serializes this CreateExerciseParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateExerciseParams&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.name, name) || other.name == name)&&(identical(other.setsCount, setsCount) || other.setsCount == setsCount)&&(identical(other.reps, reps) || other.reps == reps)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exerciseId,name,setsCount,reps,weight);

@override
String toString() {
  return 'CreateExerciseParams(exerciseId: $exerciseId, name: $name, setsCount: $setsCount, reps: $reps, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $CreateExerciseParamsCopyWith<$Res>  {
  factory $CreateExerciseParamsCopyWith(CreateExerciseParams value, $Res Function(CreateExerciseParams) _then) = _$CreateExerciseParamsCopyWithImpl;
@useResult
$Res call({
 String exerciseId, String name, int setsCount, int reps, double weight
});




}
/// @nodoc
class _$CreateExerciseParamsCopyWithImpl<$Res>
    implements $CreateExerciseParamsCopyWith<$Res> {
  _$CreateExerciseParamsCopyWithImpl(this._self, this._then);

  final CreateExerciseParams _self;
  final $Res Function(CreateExerciseParams) _then;

/// Create a copy of CreateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exerciseId = null,Object? name = null,Object? setsCount = null,Object? reps = null,Object? weight = null,}) {
  return _then(_self.copyWith(
exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,setsCount: null == setsCount ? _self.setsCount : setsCount // ignore: cast_nullable_to_non_nullable
as int,reps: null == reps ? _self.reps : reps // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateExerciseParams].
extension CreateExerciseParamsPatterns on CreateExerciseParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateExerciseParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateExerciseParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateExerciseParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateExerciseParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateExerciseParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateExerciseParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String exerciseId,  String name,  int setsCount,  int reps,  double weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateExerciseParams() when $default != null:
return $default(_that.exerciseId,_that.name,_that.setsCount,_that.reps,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String exerciseId,  String name,  int setsCount,  int reps,  double weight)  $default,) {final _that = this;
switch (_that) {
case _CreateExerciseParams():
return $default(_that.exerciseId,_that.name,_that.setsCount,_that.reps,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String exerciseId,  String name,  int setsCount,  int reps,  double weight)?  $default,) {final _that = this;
switch (_that) {
case _CreateExerciseParams() when $default != null:
return $default(_that.exerciseId,_that.name,_that.setsCount,_that.reps,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateExerciseParams implements CreateExerciseParams {
  const _CreateExerciseParams({required this.exerciseId, required this.name, required this.setsCount, required this.reps, required this.weight});
  factory _CreateExerciseParams.fromJson(Map<String, dynamic> json) => _$CreateExerciseParamsFromJson(json);

@override final  String exerciseId;
@override final  String name;
@override final  int setsCount;
@override final  int reps;
@override final  double weight;

/// Create a copy of CreateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateExerciseParamsCopyWith<_CreateExerciseParams> get copyWith => __$CreateExerciseParamsCopyWithImpl<_CreateExerciseParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateExerciseParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateExerciseParams&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.name, name) || other.name == name)&&(identical(other.setsCount, setsCount) || other.setsCount == setsCount)&&(identical(other.reps, reps) || other.reps == reps)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exerciseId,name,setsCount,reps,weight);

@override
String toString() {
  return 'CreateExerciseParams(exerciseId: $exerciseId, name: $name, setsCount: $setsCount, reps: $reps, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$CreateExerciseParamsCopyWith<$Res> implements $CreateExerciseParamsCopyWith<$Res> {
  factory _$CreateExerciseParamsCopyWith(_CreateExerciseParams value, $Res Function(_CreateExerciseParams) _then) = __$CreateExerciseParamsCopyWithImpl;
@override @useResult
$Res call({
 String exerciseId, String name, int setsCount, int reps, double weight
});




}
/// @nodoc
class __$CreateExerciseParamsCopyWithImpl<$Res>
    implements _$CreateExerciseParamsCopyWith<$Res> {
  __$CreateExerciseParamsCopyWithImpl(this._self, this._then);

  final _CreateExerciseParams _self;
  final $Res Function(_CreateExerciseParams) _then;

/// Create a copy of CreateExerciseParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exerciseId = null,Object? name = null,Object? setsCount = null,Object? reps = null,Object? weight = null,}) {
  return _then(_CreateExerciseParams(
exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,setsCount: null == setsCount ? _self.setsCount : setsCount // ignore: cast_nullable_to_non_nullable
as int,reps: null == reps ? _self.reps : reps // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
