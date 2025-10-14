// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExerciseEntity {

 String get exerciseId; String get name; List<SetEntity> get sets; DateTime? get createdAt;
/// Create a copy of ExerciseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExerciseEntityCopyWith<ExerciseEntity> get copyWith => _$ExerciseEntityCopyWithImpl<ExerciseEntity>(this as ExerciseEntity, _$identity);

  /// Serializes this ExerciseEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseEntity&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.sets, sets)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exerciseId,name,const DeepCollectionEquality().hash(sets),createdAt);

@override
String toString() {
  return 'ExerciseEntity(exerciseId: $exerciseId, name: $name, sets: $sets, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ExerciseEntityCopyWith<$Res>  {
  factory $ExerciseEntityCopyWith(ExerciseEntity value, $Res Function(ExerciseEntity) _then) = _$ExerciseEntityCopyWithImpl;
@useResult
$Res call({
 String exerciseId, String name, List<SetEntity> sets, DateTime? createdAt
});




}
/// @nodoc
class _$ExerciseEntityCopyWithImpl<$Res>
    implements $ExerciseEntityCopyWith<$Res> {
  _$ExerciseEntityCopyWithImpl(this._self, this._then);

  final ExerciseEntity _self;
  final $Res Function(ExerciseEntity) _then;

/// Create a copy of ExerciseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exerciseId = null,Object? name = null,Object? sets = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sets: null == sets ? _self.sets : sets // ignore: cast_nullable_to_non_nullable
as List<SetEntity>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExerciseEntity].
extension ExerciseEntityPatterns on ExerciseEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExerciseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExerciseEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExerciseEntity value)  $default,){
final _that = this;
switch (_that) {
case _ExerciseEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExerciseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ExerciseEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String exerciseId,  String name,  List<SetEntity> sets,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExerciseEntity() when $default != null:
return $default(_that.exerciseId,_that.name,_that.sets,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String exerciseId,  String name,  List<SetEntity> sets,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ExerciseEntity():
return $default(_that.exerciseId,_that.name,_that.sets,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String exerciseId,  String name,  List<SetEntity> sets,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ExerciseEntity() when $default != null:
return $default(_that.exerciseId,_that.name,_that.sets,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExerciseEntity implements ExerciseEntity {
  const _ExerciseEntity({required this.exerciseId, required this.name, required final  List<SetEntity> sets, this.createdAt}): _sets = sets;
  factory _ExerciseEntity.fromJson(Map<String, dynamic> json) => _$ExerciseEntityFromJson(json);

@override final  String exerciseId;
@override final  String name;
 final  List<SetEntity> _sets;
@override List<SetEntity> get sets {
  if (_sets is EqualUnmodifiableListView) return _sets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sets);
}

@override final  DateTime? createdAt;

/// Create a copy of ExerciseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExerciseEntityCopyWith<_ExerciseEntity> get copyWith => __$ExerciseEntityCopyWithImpl<_ExerciseEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExerciseEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExerciseEntity&&(identical(other.exerciseId, exerciseId) || other.exerciseId == exerciseId)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._sets, _sets)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exerciseId,name,const DeepCollectionEquality().hash(_sets),createdAt);

@override
String toString() {
  return 'ExerciseEntity(exerciseId: $exerciseId, name: $name, sets: $sets, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ExerciseEntityCopyWith<$Res> implements $ExerciseEntityCopyWith<$Res> {
  factory _$ExerciseEntityCopyWith(_ExerciseEntity value, $Res Function(_ExerciseEntity) _then) = __$ExerciseEntityCopyWithImpl;
@override @useResult
$Res call({
 String exerciseId, String name, List<SetEntity> sets, DateTime? createdAt
});




}
/// @nodoc
class __$ExerciseEntityCopyWithImpl<$Res>
    implements _$ExerciseEntityCopyWith<$Res> {
  __$ExerciseEntityCopyWithImpl(this._self, this._then);

  final _ExerciseEntity _self;
  final $Res Function(_ExerciseEntity) _then;

/// Create a copy of ExerciseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exerciseId = null,Object? name = null,Object? sets = null,Object? createdAt = freezed,}) {
  return _then(_ExerciseEntity(
exerciseId: null == exerciseId ? _self.exerciseId : exerciseId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sets: null == sets ? _self._sets : sets // ignore: cast_nullable_to_non_nullable
as List<SetEntity>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
