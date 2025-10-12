// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetEntity {

 int get reps; double get weight; bool get isCompleted; bool get isWarmup; String? get notes;
/// Create a copy of SetEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetEntityCopyWith<SetEntity> get copyWith => _$SetEntityCopyWithImpl<SetEntity>(this as SetEntity, _$identity);

  /// Serializes this SetEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetEntity&&(identical(other.reps, reps) || other.reps == reps)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.isWarmup, isWarmup) || other.isWarmup == isWarmup)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reps,weight,isCompleted,isWarmup,notes);

@override
String toString() {
  return 'SetEntity(reps: $reps, weight: $weight, isCompleted: $isCompleted, isWarmup: $isWarmup, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $SetEntityCopyWith<$Res>  {
  factory $SetEntityCopyWith(SetEntity value, $Res Function(SetEntity) _then) = _$SetEntityCopyWithImpl;
@useResult
$Res call({
 int reps, double weight, bool isCompleted, bool isWarmup, String? notes
});




}
/// @nodoc
class _$SetEntityCopyWithImpl<$Res>
    implements $SetEntityCopyWith<$Res> {
  _$SetEntityCopyWithImpl(this._self, this._then);

  final SetEntity _self;
  final $Res Function(SetEntity) _then;

/// Create a copy of SetEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reps = null,Object? weight = null,Object? isCompleted = null,Object? isWarmup = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
reps: null == reps ? _self.reps : reps // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,isWarmup: null == isWarmup ? _self.isWarmup : isWarmup // ignore: cast_nullable_to_non_nullable
as bool,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SetEntity].
extension SetEntityPatterns on SetEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetEntity value)  $default,){
final _that = this;
switch (_that) {
case _SetEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SetEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int reps,  double weight,  bool isCompleted,  bool isWarmup,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetEntity() when $default != null:
return $default(_that.reps,_that.weight,_that.isCompleted,_that.isWarmup,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int reps,  double weight,  bool isCompleted,  bool isWarmup,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _SetEntity():
return $default(_that.reps,_that.weight,_that.isCompleted,_that.isWarmup,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int reps,  double weight,  bool isCompleted,  bool isWarmup,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _SetEntity() when $default != null:
return $default(_that.reps,_that.weight,_that.isCompleted,_that.isWarmup,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetEntity implements SetEntity {
  const _SetEntity({required this.reps, required this.weight, this.isCompleted = false, this.isWarmup = false, this.notes});
  factory _SetEntity.fromJson(Map<String, dynamic> json) => _$SetEntityFromJson(json);

@override final  int reps;
@override final  double weight;
@override@JsonKey() final  bool isCompleted;
@override@JsonKey() final  bool isWarmup;
@override final  String? notes;

/// Create a copy of SetEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetEntityCopyWith<_SetEntity> get copyWith => __$SetEntityCopyWithImpl<_SetEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetEntity&&(identical(other.reps, reps) || other.reps == reps)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.isWarmup, isWarmup) || other.isWarmup == isWarmup)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reps,weight,isCompleted,isWarmup,notes);

@override
String toString() {
  return 'SetEntity(reps: $reps, weight: $weight, isCompleted: $isCompleted, isWarmup: $isWarmup, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$SetEntityCopyWith<$Res> implements $SetEntityCopyWith<$Res> {
  factory _$SetEntityCopyWith(_SetEntity value, $Res Function(_SetEntity) _then) = __$SetEntityCopyWithImpl;
@override @useResult
$Res call({
 int reps, double weight, bool isCompleted, bool isWarmup, String? notes
});




}
/// @nodoc
class __$SetEntityCopyWithImpl<$Res>
    implements _$SetEntityCopyWith<$Res> {
  __$SetEntityCopyWithImpl(this._self, this._then);

  final _SetEntity _self;
  final $Res Function(_SetEntity) _then;

/// Create a copy of SetEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reps = null,Object? weight = null,Object? isCompleted = null,Object? isWarmup = null,Object? notes = freezed,}) {
  return _then(_SetEntity(
reps: null == reps ? _self.reps : reps // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,isWarmup: null == isWarmup ? _self.isWarmup : isWarmup // ignore: cast_nullable_to_non_nullable
as bool,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
