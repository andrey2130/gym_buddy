// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProfileParams {

 String get uid; String? get name; String? get avatarUrl; String? get backgroundUrl;
/// Create a copy of UpdateProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileParamsCopyWith<UpdateProfileParams> get copyWith => _$UpdateProfileParamsCopyWithImpl<UpdateProfileParams>(this as UpdateProfileParams, _$identity);

  /// Serializes this UpdateProfileParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileParams&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.backgroundUrl, backgroundUrl) || other.backgroundUrl == backgroundUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,name,avatarUrl,backgroundUrl);

@override
String toString() {
  return 'UpdateProfileParams(uid: $uid, name: $name, avatarUrl: $avatarUrl, backgroundUrl: $backgroundUrl)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileParamsCopyWith<$Res>  {
  factory $UpdateProfileParamsCopyWith(UpdateProfileParams value, $Res Function(UpdateProfileParams) _then) = _$UpdateProfileParamsCopyWithImpl;
@useResult
$Res call({
 String uid, String? name, String? avatarUrl, String? backgroundUrl
});




}
/// @nodoc
class _$UpdateProfileParamsCopyWithImpl<$Res>
    implements $UpdateProfileParamsCopyWith<$Res> {
  _$UpdateProfileParamsCopyWithImpl(this._self, this._then);

  final UpdateProfileParams _self;
  final $Res Function(UpdateProfileParams) _then;

/// Create a copy of UpdateProfileParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? name = freezed,Object? avatarUrl = freezed,Object? backgroundUrl = freezed,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,backgroundUrl: freezed == backgroundUrl ? _self.backgroundUrl : backgroundUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProfileParams].
extension UpdateProfileParamsPatterns on UpdateProfileParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProfileParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProfileParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProfileParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProfileParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String? name,  String? avatarUrl,  String? backgroundUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProfileParams() when $default != null:
return $default(_that.uid,_that.name,_that.avatarUrl,_that.backgroundUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String? name,  String? avatarUrl,  String? backgroundUrl)  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileParams():
return $default(_that.uid,_that.name,_that.avatarUrl,_that.backgroundUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String? name,  String? avatarUrl,  String? backgroundUrl)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileParams() when $default != null:
return $default(_that.uid,_that.name,_that.avatarUrl,_that.backgroundUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProfileParams implements UpdateProfileParams {
  const _UpdateProfileParams({required this.uid, this.name, this.avatarUrl, this.backgroundUrl});
  factory _UpdateProfileParams.fromJson(Map<String, dynamic> json) => _$UpdateProfileParamsFromJson(json);

@override final  String uid;
@override final  String? name;
@override final  String? avatarUrl;
@override final  String? backgroundUrl;

/// Create a copy of UpdateProfileParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileParamsCopyWith<_UpdateProfileParams> get copyWith => __$UpdateProfileParamsCopyWithImpl<_UpdateProfileParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProfileParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileParams&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.backgroundUrl, backgroundUrl) || other.backgroundUrl == backgroundUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,name,avatarUrl,backgroundUrl);

@override
String toString() {
  return 'UpdateProfileParams(uid: $uid, name: $name, avatarUrl: $avatarUrl, backgroundUrl: $backgroundUrl)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileParamsCopyWith<$Res> implements $UpdateProfileParamsCopyWith<$Res> {
  factory _$UpdateProfileParamsCopyWith(_UpdateProfileParams value, $Res Function(_UpdateProfileParams) _then) = __$UpdateProfileParamsCopyWithImpl;
@override @useResult
$Res call({
 String uid, String? name, String? avatarUrl, String? backgroundUrl
});




}
/// @nodoc
class __$UpdateProfileParamsCopyWithImpl<$Res>
    implements _$UpdateProfileParamsCopyWith<$Res> {
  __$UpdateProfileParamsCopyWithImpl(this._self, this._then);

  final _UpdateProfileParams _self;
  final $Res Function(_UpdateProfileParams) _then;

/// Create a copy of UpdateProfileParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? name = freezed,Object? avatarUrl = freezed,Object? backgroundUrl = freezed,}) {
  return _then(_UpdateProfileParams(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,backgroundUrl: freezed == backgroundUrl ? _self.backgroundUrl : backgroundUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
