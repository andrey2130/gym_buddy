// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_user_training_days_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeUserTrainingDaysParams {

 String get uid; List<String> get trainingDays;
/// Create a copy of ChangeUserTrainingDaysParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeUserTrainingDaysParamsCopyWith<ChangeUserTrainingDaysParams> get copyWith => _$ChangeUserTrainingDaysParamsCopyWithImpl<ChangeUserTrainingDaysParams>(this as ChangeUserTrainingDaysParams, _$identity);

  /// Serializes this ChangeUserTrainingDaysParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeUserTrainingDaysParams&&(identical(other.uid, uid) || other.uid == uid)&&const DeepCollectionEquality().equals(other.trainingDays, trainingDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,const DeepCollectionEquality().hash(trainingDays));

@override
String toString() {
  return 'ChangeUserTrainingDaysParams(uid: $uid, trainingDays: $trainingDays)';
}


}

/// @nodoc
abstract mixin class $ChangeUserTrainingDaysParamsCopyWith<$Res>  {
  factory $ChangeUserTrainingDaysParamsCopyWith(ChangeUserTrainingDaysParams value, $Res Function(ChangeUserTrainingDaysParams) _then) = _$ChangeUserTrainingDaysParamsCopyWithImpl;
@useResult
$Res call({
 String uid, List<String> trainingDays
});




}
/// @nodoc
class _$ChangeUserTrainingDaysParamsCopyWithImpl<$Res>
    implements $ChangeUserTrainingDaysParamsCopyWith<$Res> {
  _$ChangeUserTrainingDaysParamsCopyWithImpl(this._self, this._then);

  final ChangeUserTrainingDaysParams _self;
  final $Res Function(ChangeUserTrainingDaysParams) _then;

/// Create a copy of ChangeUserTrainingDaysParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? trainingDays = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,trainingDays: null == trainingDays ? _self.trainingDays : trainingDays // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeUserTrainingDaysParams].
extension ChangeUserTrainingDaysParamsPatterns on ChangeUserTrainingDaysParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeUserTrainingDaysParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeUserTrainingDaysParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeUserTrainingDaysParams value)  $default,){
final _that = this;
switch (_that) {
case _ChangeUserTrainingDaysParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeUserTrainingDaysParams value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeUserTrainingDaysParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  List<String> trainingDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeUserTrainingDaysParams() when $default != null:
return $default(_that.uid,_that.trainingDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  List<String> trainingDays)  $default,) {final _that = this;
switch (_that) {
case _ChangeUserTrainingDaysParams():
return $default(_that.uid,_that.trainingDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  List<String> trainingDays)?  $default,) {final _that = this;
switch (_that) {
case _ChangeUserTrainingDaysParams() when $default != null:
return $default(_that.uid,_that.trainingDays);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangeUserTrainingDaysParams implements ChangeUserTrainingDaysParams {
  const _ChangeUserTrainingDaysParams({required this.uid, required final  List<String> trainingDays}): _trainingDays = trainingDays;
  factory _ChangeUserTrainingDaysParams.fromJson(Map<String, dynamic> json) => _$ChangeUserTrainingDaysParamsFromJson(json);

@override final  String uid;
 final  List<String> _trainingDays;
@override List<String> get trainingDays {
  if (_trainingDays is EqualUnmodifiableListView) return _trainingDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trainingDays);
}


/// Create a copy of ChangeUserTrainingDaysParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeUserTrainingDaysParamsCopyWith<_ChangeUserTrainingDaysParams> get copyWith => __$ChangeUserTrainingDaysParamsCopyWithImpl<_ChangeUserTrainingDaysParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeUserTrainingDaysParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeUserTrainingDaysParams&&(identical(other.uid, uid) || other.uid == uid)&&const DeepCollectionEquality().equals(other._trainingDays, _trainingDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,const DeepCollectionEquality().hash(_trainingDays));

@override
String toString() {
  return 'ChangeUserTrainingDaysParams(uid: $uid, trainingDays: $trainingDays)';
}


}

/// @nodoc
abstract mixin class _$ChangeUserTrainingDaysParamsCopyWith<$Res> implements $ChangeUserTrainingDaysParamsCopyWith<$Res> {
  factory _$ChangeUserTrainingDaysParamsCopyWith(_ChangeUserTrainingDaysParams value, $Res Function(_ChangeUserTrainingDaysParams) _then) = __$ChangeUserTrainingDaysParamsCopyWithImpl;
@override @useResult
$Res call({
 String uid, List<String> trainingDays
});




}
/// @nodoc
class __$ChangeUserTrainingDaysParamsCopyWithImpl<$Res>
    implements _$ChangeUserTrainingDaysParamsCopyWith<$Res> {
  __$ChangeUserTrainingDaysParamsCopyWithImpl(this._self, this._then);

  final _ChangeUserTrainingDaysParams _self;
  final $Res Function(_ChangeUserTrainingDaysParams) _then;

/// Create a copy of ChangeUserTrainingDaysParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? trainingDays = null,}) {
  return _then(_ChangeUserTrainingDaysParams(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,trainingDays: null == trainingDays ? _self._trainingDays : trainingDays // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
