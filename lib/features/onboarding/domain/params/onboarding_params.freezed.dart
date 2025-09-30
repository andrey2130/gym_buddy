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

 List<String> get selectedDays; String get selectedPlan; String get trainingTime; String get country; String get city; bool get isMorning;
/// Create a copy of OnboardingParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnboardingParamsCopyWith<OnboardingParams> get copyWith => _$OnboardingParamsCopyWithImpl<OnboardingParams>(this as OnboardingParams, _$identity);

  /// Serializes this OnboardingParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingParams&&const DeepCollectionEquality().equals(other.selectedDays, selectedDays)&&(identical(other.selectedPlan, selectedPlan) || other.selectedPlan == selectedPlan)&&(identical(other.trainingTime, trainingTime) || other.trainingTime == trainingTime)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.isMorning, isMorning) || other.isMorning == isMorning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedDays),selectedPlan,trainingTime,country,city,isMorning);

@override
String toString() {
  return 'OnboardingParams(selectedDays: $selectedDays, selectedPlan: $selectedPlan, trainingTime: $trainingTime, country: $country, city: $city, isMorning: $isMorning)';
}


}

/// @nodoc
abstract mixin class $OnboardingParamsCopyWith<$Res>  {
  factory $OnboardingParamsCopyWith(OnboardingParams value, $Res Function(OnboardingParams) _then) = _$OnboardingParamsCopyWithImpl;
@useResult
$Res call({
 List<String> selectedDays, String selectedPlan, String trainingTime, String country, String city, bool isMorning
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
@pragma('vm:prefer-inline') @override $Res call({Object? selectedDays = null,Object? selectedPlan = null,Object? trainingTime = null,Object? country = null,Object? city = null,Object? isMorning = null,}) {
  return _then(_self.copyWith(
selectedDays: null == selectedDays ? _self.selectedDays : selectedDays // ignore: cast_nullable_to_non_nullable
as List<String>,selectedPlan: null == selectedPlan ? _self.selectedPlan : selectedPlan // ignore: cast_nullable_to_non_nullable
as String,trainingTime: null == trainingTime ? _self.trainingTime : trainingTime // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,isMorning: null == isMorning ? _self.isMorning : isMorning // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> selectedDays,  String selectedPlan,  String trainingTime,  String country,  String city,  bool isMorning)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnboardingParams() when $default != null:
return $default(_that.selectedDays,_that.selectedPlan,_that.trainingTime,_that.country,_that.city,_that.isMorning);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> selectedDays,  String selectedPlan,  String trainingTime,  String country,  String city,  bool isMorning)  $default,) {final _that = this;
switch (_that) {
case _OnboardingParams():
return $default(_that.selectedDays,_that.selectedPlan,_that.trainingTime,_that.country,_that.city,_that.isMorning);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> selectedDays,  String selectedPlan,  String trainingTime,  String country,  String city,  bool isMorning)?  $default,) {final _that = this;
switch (_that) {
case _OnboardingParams() when $default != null:
return $default(_that.selectedDays,_that.selectedPlan,_that.trainingTime,_that.country,_that.city,_that.isMorning);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnboardingParams implements OnboardingParams {
  const _OnboardingParams({required final  List<String> selectedDays, required this.selectedPlan, required this.trainingTime, required this.country, required this.city, required this.isMorning}): _selectedDays = selectedDays;
  factory _OnboardingParams.fromJson(Map<String, dynamic> json) => _$OnboardingParamsFromJson(json);

 final  List<String> _selectedDays;
@override List<String> get selectedDays {
  if (_selectedDays is EqualUnmodifiableListView) return _selectedDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedDays);
}

@override final  String selectedPlan;
@override final  String trainingTime;
@override final  String country;
@override final  String city;
@override final  bool isMorning;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnboardingParams&&const DeepCollectionEquality().equals(other._selectedDays, _selectedDays)&&(identical(other.selectedPlan, selectedPlan) || other.selectedPlan == selectedPlan)&&(identical(other.trainingTime, trainingTime) || other.trainingTime == trainingTime)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.isMorning, isMorning) || other.isMorning == isMorning));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedDays),selectedPlan,trainingTime,country,city,isMorning);

@override
String toString() {
  return 'OnboardingParams(selectedDays: $selectedDays, selectedPlan: $selectedPlan, trainingTime: $trainingTime, country: $country, city: $city, isMorning: $isMorning)';
}


}

/// @nodoc
abstract mixin class _$OnboardingParamsCopyWith<$Res> implements $OnboardingParamsCopyWith<$Res> {
  factory _$OnboardingParamsCopyWith(_OnboardingParams value, $Res Function(_OnboardingParams) _then) = __$OnboardingParamsCopyWithImpl;
@override @useResult
$Res call({
 List<String> selectedDays, String selectedPlan, String trainingTime, String country, String city, bool isMorning
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
@override @pragma('vm:prefer-inline') $Res call({Object? selectedDays = null,Object? selectedPlan = null,Object? trainingTime = null,Object? country = null,Object? city = null,Object? isMorning = null,}) {
  return _then(_OnboardingParams(
selectedDays: null == selectedDays ? _self._selectedDays : selectedDays // ignore: cast_nullable_to_non_nullable
as List<String>,selectedPlan: null == selectedPlan ? _self.selectedPlan : selectedPlan // ignore: cast_nullable_to_non_nullable
as String,trainingTime: null == trainingTime ? _self.trainingTime : trainingTime // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,isMorning: null == isMorning ? _self.isMorning : isMorning // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
