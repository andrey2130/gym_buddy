// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'format_time_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormatTimeParams {

 TimeFormatType get formatType; DateTime? get dateTime; int? get minutes;
/// Create a copy of FormatTimeParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatTimeParamsCopyWith<FormatTimeParams> get copyWith => _$FormatTimeParamsCopyWithImpl<FormatTimeParams>(this as FormatTimeParams, _$identity);

  /// Serializes this FormatTimeParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatTimeParams&&(identical(other.formatType, formatType) || other.formatType == formatType)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.minutes, minutes) || other.minutes == minutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,formatType,dateTime,minutes);

@override
String toString() {
  return 'FormatTimeParams(formatType: $formatType, dateTime: $dateTime, minutes: $minutes)';
}


}

/// @nodoc
abstract mixin class $FormatTimeParamsCopyWith<$Res>  {
  factory $FormatTimeParamsCopyWith(FormatTimeParams value, $Res Function(FormatTimeParams) _then) = _$FormatTimeParamsCopyWithImpl;
@useResult
$Res call({
 TimeFormatType formatType, DateTime? dateTime, int? minutes
});




}
/// @nodoc
class _$FormatTimeParamsCopyWithImpl<$Res>
    implements $FormatTimeParamsCopyWith<$Res> {
  _$FormatTimeParamsCopyWithImpl(this._self, this._then);

  final FormatTimeParams _self;
  final $Res Function(FormatTimeParams) _then;

/// Create a copy of FormatTimeParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formatType = null,Object? dateTime = freezed,Object? minutes = freezed,}) {
  return _then(_self.copyWith(
formatType: null == formatType ? _self.formatType : formatType // ignore: cast_nullable_to_non_nullable
as TimeFormatType,dateTime: freezed == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,minutes: freezed == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FormatTimeParams].
extension FormatTimeParamsPatterns on FormatTimeParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormatTimeParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormatTimeParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormatTimeParams value)  $default,){
final _that = this;
switch (_that) {
case _FormatTimeParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormatTimeParams value)?  $default,){
final _that = this;
switch (_that) {
case _FormatTimeParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TimeFormatType formatType,  DateTime? dateTime,  int? minutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormatTimeParams() when $default != null:
return $default(_that.formatType,_that.dateTime,_that.minutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TimeFormatType formatType,  DateTime? dateTime,  int? minutes)  $default,) {final _that = this;
switch (_that) {
case _FormatTimeParams():
return $default(_that.formatType,_that.dateTime,_that.minutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TimeFormatType formatType,  DateTime? dateTime,  int? minutes)?  $default,) {final _that = this;
switch (_that) {
case _FormatTimeParams() when $default != null:
return $default(_that.formatType,_that.dateTime,_that.minutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FormatTimeParams implements FormatTimeParams {
  const _FormatTimeParams({required this.formatType, this.dateTime, this.minutes});
  factory _FormatTimeParams.fromJson(Map<String, dynamic> json) => _$FormatTimeParamsFromJson(json);

@override final  TimeFormatType formatType;
@override final  DateTime? dateTime;
@override final  int? minutes;

/// Create a copy of FormatTimeParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormatTimeParamsCopyWith<_FormatTimeParams> get copyWith => __$FormatTimeParamsCopyWithImpl<_FormatTimeParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormatTimeParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormatTimeParams&&(identical(other.formatType, formatType) || other.formatType == formatType)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.minutes, minutes) || other.minutes == minutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,formatType,dateTime,minutes);

@override
String toString() {
  return 'FormatTimeParams(formatType: $formatType, dateTime: $dateTime, minutes: $minutes)';
}


}

/// @nodoc
abstract mixin class _$FormatTimeParamsCopyWith<$Res> implements $FormatTimeParamsCopyWith<$Res> {
  factory _$FormatTimeParamsCopyWith(_FormatTimeParams value, $Res Function(_FormatTimeParams) _then) = __$FormatTimeParamsCopyWithImpl;
@override @useResult
$Res call({
 TimeFormatType formatType, DateTime? dateTime, int? minutes
});




}
/// @nodoc
class __$FormatTimeParamsCopyWithImpl<$Res>
    implements _$FormatTimeParamsCopyWith<$Res> {
  __$FormatTimeParamsCopyWithImpl(this._self, this._then);

  final _FormatTimeParams _self;
  final $Res Function(_FormatTimeParams) _then;

/// Create a copy of FormatTimeParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formatType = null,Object? dateTime = freezed,Object? minutes = freezed,}) {
  return _then(_FormatTimeParams(
formatType: null == formatType ? _self.formatType : formatType // ignore: cast_nullable_to_non_nullable
as TimeFormatType,dateTime: freezed == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,minutes: freezed == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
