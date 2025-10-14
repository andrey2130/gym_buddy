// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonalMetrics {

 String get gender; int get birthYear; double get weight; double get height; double? get bmi; double? get bmr;
/// Create a copy of PersonalMetrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalMetricsCopyWith<PersonalMetrics> get copyWith => _$PersonalMetricsCopyWithImpl<PersonalMetrics>(this as PersonalMetrics, _$identity);

  /// Serializes this PersonalMetrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalMetrics&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthYear, birthYear) || other.birthYear == birthYear)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.height, height) || other.height == height)&&(identical(other.bmi, bmi) || other.bmi == bmi)&&(identical(other.bmr, bmr) || other.bmr == bmr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,birthYear,weight,height,bmi,bmr);

@override
String toString() {
  return 'PersonalMetrics(gender: $gender, birthYear: $birthYear, weight: $weight, height: $height, bmi: $bmi, bmr: $bmr)';
}


}

/// @nodoc
abstract mixin class $PersonalMetricsCopyWith<$Res>  {
  factory $PersonalMetricsCopyWith(PersonalMetrics value, $Res Function(PersonalMetrics) _then) = _$PersonalMetricsCopyWithImpl;
@useResult
$Res call({
 String gender, int birthYear, double weight, double height, double? bmi, double? bmr
});




}
/// @nodoc
class _$PersonalMetricsCopyWithImpl<$Res>
    implements $PersonalMetricsCopyWith<$Res> {
  _$PersonalMetricsCopyWithImpl(this._self, this._then);

  final PersonalMetrics _self;
  final $Res Function(PersonalMetrics) _then;

/// Create a copy of PersonalMetrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = null,Object? birthYear = null,Object? weight = null,Object? height = null,Object? bmi = freezed,Object? bmr = freezed,}) {
  return _then(_self.copyWith(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,birthYear: null == birthYear ? _self.birthYear : birthYear // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,bmi: freezed == bmi ? _self.bmi : bmi // ignore: cast_nullable_to_non_nullable
as double?,bmr: freezed == bmr ? _self.bmr : bmr // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonalMetrics].
extension PersonalMetricsPatterns on PersonalMetrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonalMetrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonalMetrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonalMetrics value)  $default,){
final _that = this;
switch (_that) {
case _PersonalMetrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonalMetrics value)?  $default,){
final _that = this;
switch (_that) {
case _PersonalMetrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gender,  int birthYear,  double weight,  double height,  double? bmi,  double? bmr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonalMetrics() when $default != null:
return $default(_that.gender,_that.birthYear,_that.weight,_that.height,_that.bmi,_that.bmr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gender,  int birthYear,  double weight,  double height,  double? bmi,  double? bmr)  $default,) {final _that = this;
switch (_that) {
case _PersonalMetrics():
return $default(_that.gender,_that.birthYear,_that.weight,_that.height,_that.bmi,_that.bmr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gender,  int birthYear,  double weight,  double height,  double? bmi,  double? bmr)?  $default,) {final _that = this;
switch (_that) {
case _PersonalMetrics() when $default != null:
return $default(_that.gender,_that.birthYear,_that.weight,_that.height,_that.bmi,_that.bmr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonalMetrics implements PersonalMetrics {
  const _PersonalMetrics({required this.gender, required this.birthYear, required this.weight, required this.height, this.bmi, this.bmr});
  factory _PersonalMetrics.fromJson(Map<String, dynamic> json) => _$PersonalMetricsFromJson(json);

@override final  String gender;
@override final  int birthYear;
@override final  double weight;
@override final  double height;
@override final  double? bmi;
@override final  double? bmr;

/// Create a copy of PersonalMetrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonalMetricsCopyWith<_PersonalMetrics> get copyWith => __$PersonalMetricsCopyWithImpl<_PersonalMetrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonalMetricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonalMetrics&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.birthYear, birthYear) || other.birthYear == birthYear)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.height, height) || other.height == height)&&(identical(other.bmi, bmi) || other.bmi == bmi)&&(identical(other.bmr, bmr) || other.bmr == bmr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,birthYear,weight,height,bmi,bmr);

@override
String toString() {
  return 'PersonalMetrics(gender: $gender, birthYear: $birthYear, weight: $weight, height: $height, bmi: $bmi, bmr: $bmr)';
}


}

/// @nodoc
abstract mixin class _$PersonalMetricsCopyWith<$Res> implements $PersonalMetricsCopyWith<$Res> {
  factory _$PersonalMetricsCopyWith(_PersonalMetrics value, $Res Function(_PersonalMetrics) _then) = __$PersonalMetricsCopyWithImpl;
@override @useResult
$Res call({
 String gender, int birthYear, double weight, double height, double? bmi, double? bmr
});




}
/// @nodoc
class __$PersonalMetricsCopyWithImpl<$Res>
    implements _$PersonalMetricsCopyWith<$Res> {
  __$PersonalMetricsCopyWithImpl(this._self, this._then);

  final _PersonalMetrics _self;
  final $Res Function(_PersonalMetrics) _then;

/// Create a copy of PersonalMetrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = null,Object? birthYear = null,Object? weight = null,Object? height = null,Object? bmi = freezed,Object? bmr = freezed,}) {
  return _then(_PersonalMetrics(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,birthYear: null == birthYear ? _self.birthYear : birthYear // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,bmi: freezed == bmi ? _self.bmi : bmi // ignore: cast_nullable_to_non_nullable
as double?,bmr: freezed == bmr ? _self.bmr : bmr // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
