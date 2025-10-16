// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_home_overview_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetHomeOverviewParams {

 String get uid;
/// Create a copy of GetHomeOverviewParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetHomeOverviewParamsCopyWith<GetHomeOverviewParams> get copyWith => _$GetHomeOverviewParamsCopyWithImpl<GetHomeOverviewParams>(this as GetHomeOverviewParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHomeOverviewParams&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,uid);

@override
String toString() {
  return 'GetHomeOverviewParams(uid: $uid)';
}


}

/// @nodoc
abstract mixin class $GetHomeOverviewParamsCopyWith<$Res>  {
  factory $GetHomeOverviewParamsCopyWith(GetHomeOverviewParams value, $Res Function(GetHomeOverviewParams) _then) = _$GetHomeOverviewParamsCopyWithImpl;
@useResult
$Res call({
 String uid
});




}
/// @nodoc
class _$GetHomeOverviewParamsCopyWithImpl<$Res>
    implements $GetHomeOverviewParamsCopyWith<$Res> {
  _$GetHomeOverviewParamsCopyWithImpl(this._self, this._then);

  final GetHomeOverviewParams _self;
  final $Res Function(GetHomeOverviewParams) _then;

/// Create a copy of GetHomeOverviewParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetHomeOverviewParams].
extension GetHomeOverviewParamsPatterns on GetHomeOverviewParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetHomeOverviewParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetHomeOverviewParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetHomeOverviewParams value)  $default,){
final _that = this;
switch (_that) {
case _GetHomeOverviewParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetHomeOverviewParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetHomeOverviewParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetHomeOverviewParams() when $default != null:
return $default(_that.uid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid)  $default,) {final _that = this;
switch (_that) {
case _GetHomeOverviewParams():
return $default(_that.uid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid)?  $default,) {final _that = this;
switch (_that) {
case _GetHomeOverviewParams() when $default != null:
return $default(_that.uid);case _:
  return null;

}
}

}

/// @nodoc


class _GetHomeOverviewParams implements GetHomeOverviewParams {
  const _GetHomeOverviewParams({required this.uid});
  

@override final  String uid;

/// Create a copy of GetHomeOverviewParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetHomeOverviewParamsCopyWith<_GetHomeOverviewParams> get copyWith => __$GetHomeOverviewParamsCopyWithImpl<_GetHomeOverviewParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetHomeOverviewParams&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode => Object.hash(runtimeType,uid);

@override
String toString() {
  return 'GetHomeOverviewParams(uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$GetHomeOverviewParamsCopyWith<$Res> implements $GetHomeOverviewParamsCopyWith<$Res> {
  factory _$GetHomeOverviewParamsCopyWith(_GetHomeOverviewParams value, $Res Function(_GetHomeOverviewParams) _then) = __$GetHomeOverviewParamsCopyWithImpl;
@override @useResult
$Res call({
 String uid
});




}
/// @nodoc
class __$GetHomeOverviewParamsCopyWithImpl<$Res>
    implements _$GetHomeOverviewParamsCopyWith<$Res> {
  __$GetHomeOverviewParamsCopyWithImpl(this._self, this._then);

  final _GetHomeOverviewParams _self;
  final $Res Function(_GetHomeOverviewParams) _then;

/// Create a copy of GetHomeOverviewParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(_GetHomeOverviewParams(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
