// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_workout_creation_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidateWorkoutCreationParams {

 String get name; DateTime? get selectedDate; DateTime? get startTime;
/// Create a copy of ValidateWorkoutCreationParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateWorkoutCreationParamsCopyWith<ValidateWorkoutCreationParams> get copyWith => _$ValidateWorkoutCreationParamsCopyWithImpl<ValidateWorkoutCreationParams>(this as ValidateWorkoutCreationParams, _$identity);

  /// Serializes this ValidateWorkoutCreationParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateWorkoutCreationParams&&(identical(other.name, name) || other.name == name)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,selectedDate,startTime);

@override
String toString() {
  return 'ValidateWorkoutCreationParams(name: $name, selectedDate: $selectedDate, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class $ValidateWorkoutCreationParamsCopyWith<$Res>  {
  factory $ValidateWorkoutCreationParamsCopyWith(ValidateWorkoutCreationParams value, $Res Function(ValidateWorkoutCreationParams) _then) = _$ValidateWorkoutCreationParamsCopyWithImpl;
@useResult
$Res call({
 String name, DateTime? selectedDate, DateTime? startTime
});




}
/// @nodoc
class _$ValidateWorkoutCreationParamsCopyWithImpl<$Res>
    implements $ValidateWorkoutCreationParamsCopyWith<$Res> {
  _$ValidateWorkoutCreationParamsCopyWithImpl(this._self, this._then);

  final ValidateWorkoutCreationParams _self;
  final $Res Function(ValidateWorkoutCreationParams) _then;

/// Create a copy of ValidateWorkoutCreationParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? selectedDate = freezed,Object? startTime = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ValidateWorkoutCreationParams].
extension ValidateWorkoutCreationParamsPatterns on ValidateWorkoutCreationParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValidateWorkoutCreationParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValidateWorkoutCreationParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValidateWorkoutCreationParams value)  $default,){
final _that = this;
switch (_that) {
case _ValidateWorkoutCreationParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValidateWorkoutCreationParams value)?  $default,){
final _that = this;
switch (_that) {
case _ValidateWorkoutCreationParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  DateTime? selectedDate,  DateTime? startTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValidateWorkoutCreationParams() when $default != null:
return $default(_that.name,_that.selectedDate,_that.startTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  DateTime? selectedDate,  DateTime? startTime)  $default,) {final _that = this;
switch (_that) {
case _ValidateWorkoutCreationParams():
return $default(_that.name,_that.selectedDate,_that.startTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  DateTime? selectedDate,  DateTime? startTime)?  $default,) {final _that = this;
switch (_that) {
case _ValidateWorkoutCreationParams() when $default != null:
return $default(_that.name,_that.selectedDate,_that.startTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ValidateWorkoutCreationParams implements ValidateWorkoutCreationParams {
  const _ValidateWorkoutCreationParams({required this.name, required this.selectedDate, required this.startTime});
  factory _ValidateWorkoutCreationParams.fromJson(Map<String, dynamic> json) => _$ValidateWorkoutCreationParamsFromJson(json);

@override final  String name;
@override final  DateTime? selectedDate;
@override final  DateTime? startTime;

/// Create a copy of ValidateWorkoutCreationParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidateWorkoutCreationParamsCopyWith<_ValidateWorkoutCreationParams> get copyWith => __$ValidateWorkoutCreationParamsCopyWithImpl<_ValidateWorkoutCreationParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidateWorkoutCreationParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidateWorkoutCreationParams&&(identical(other.name, name) || other.name == name)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.startTime, startTime) || other.startTime == startTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,selectedDate,startTime);

@override
String toString() {
  return 'ValidateWorkoutCreationParams(name: $name, selectedDate: $selectedDate, startTime: $startTime)';
}


}

/// @nodoc
abstract mixin class _$ValidateWorkoutCreationParamsCopyWith<$Res> implements $ValidateWorkoutCreationParamsCopyWith<$Res> {
  factory _$ValidateWorkoutCreationParamsCopyWith(_ValidateWorkoutCreationParams value, $Res Function(_ValidateWorkoutCreationParams) _then) = __$ValidateWorkoutCreationParamsCopyWithImpl;
@override @useResult
$Res call({
 String name, DateTime? selectedDate, DateTime? startTime
});




}
/// @nodoc
class __$ValidateWorkoutCreationParamsCopyWithImpl<$Res>
    implements _$ValidateWorkoutCreationParamsCopyWith<$Res> {
  __$ValidateWorkoutCreationParamsCopyWithImpl(this._self, this._then);

  final _ValidateWorkoutCreationParams _self;
  final $Res Function(_ValidateWorkoutCreationParams) _then;

/// Create a copy of ValidateWorkoutCreationParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? selectedDate = freezed,Object? startTime = freezed,}) {
  return _then(_ValidateWorkoutCreationParams(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
