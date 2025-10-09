// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetModel {

 int get reps; double get weight; bool get isCompleted; bool get isWarmup; String? get notes;
/// Create a copy of SetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetModelCopyWith<SetModel> get copyWith => _$SetModelCopyWithImpl<SetModel>(this as SetModel, _$identity);

  /// Serializes this SetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetModel&&(identical(other.reps, reps) || other.reps == reps)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.isWarmup, isWarmup) || other.isWarmup == isWarmup)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reps,weight,isCompleted,isWarmup,notes);

@override
String toString() {
  return 'SetModel(reps: $reps, weight: $weight, isCompleted: $isCompleted, isWarmup: $isWarmup, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $SetModelCopyWith<$Res>  {
  factory $SetModelCopyWith(SetModel value, $Res Function(SetModel) _then) = _$SetModelCopyWithImpl;
@useResult
$Res call({
 int reps, double weight, bool isCompleted, bool isWarmup, String? notes
});




}
/// @nodoc
class _$SetModelCopyWithImpl<$Res>
    implements $SetModelCopyWith<$Res> {
  _$SetModelCopyWithImpl(this._self, this._then);

  final SetModel _self;
  final $Res Function(SetModel) _then;

/// Create a copy of SetModel
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


/// Adds pattern-matching-related methods to [SetModel].
extension SetModelPatterns on SetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetModel value)  $default,){
final _that = this;
switch (_that) {
case _SetModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetModel value)?  $default,){
final _that = this;
switch (_that) {
case _SetModel() when $default != null:
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
case _SetModel() when $default != null:
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
case _SetModel():
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
case _SetModel() when $default != null:
return $default(_that.reps,_that.weight,_that.isCompleted,_that.isWarmup,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetModel extends SetModel {
  const _SetModel({required this.reps, required this.weight, this.isCompleted = false, this.isWarmup = false, this.notes}): super._();
  factory _SetModel.fromJson(Map<String, dynamic> json) => _$SetModelFromJson(json);

@override final  int reps;
@override final  double weight;
@override@JsonKey() final  bool isCompleted;
@override@JsonKey() final  bool isWarmup;
@override final  String? notes;

/// Create a copy of SetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetModelCopyWith<_SetModel> get copyWith => __$SetModelCopyWithImpl<_SetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetModel&&(identical(other.reps, reps) || other.reps == reps)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.isWarmup, isWarmup) || other.isWarmup == isWarmup)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reps,weight,isCompleted,isWarmup,notes);

@override
String toString() {
  return 'SetModel(reps: $reps, weight: $weight, isCompleted: $isCompleted, isWarmup: $isWarmup, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$SetModelCopyWith<$Res> implements $SetModelCopyWith<$Res> {
  factory _$SetModelCopyWith(_SetModel value, $Res Function(_SetModel) _then) = __$SetModelCopyWithImpl;
@override @useResult
$Res call({
 int reps, double weight, bool isCompleted, bool isWarmup, String? notes
});




}
/// @nodoc
class __$SetModelCopyWithImpl<$Res>
    implements _$SetModelCopyWith<$Res> {
  __$SetModelCopyWithImpl(this._self, this._then);

  final _SetModel _self;
  final $Res Function(_SetModel) _then;

/// Create a copy of SetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reps = null,Object? weight = null,Object? isCompleted = null,Object? isWarmup = null,Object? notes = freezed,}) {
  return _then(_SetModel(
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
