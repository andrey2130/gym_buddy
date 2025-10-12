// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutEntity {

 String get workoutId; String get userId; String get name; DateTime get date; DateTime get startTime; List<ExerciseEntity> get exercises; int? get duration; String? get notes; DateTime? get createdAt; DateTime? get updatedAt; bool get isCompleted;
/// Create a copy of WorkoutEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<WorkoutEntity> get copyWith => _$WorkoutEntityCopyWithImpl<WorkoutEntity>(this as WorkoutEntity, _$identity);

  /// Serializes this WorkoutEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutEntity&&(identical(other.workoutId, workoutId) || other.workoutId == workoutId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&const DeepCollectionEquality().equals(other.exercises, exercises)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workoutId,userId,name,date,startTime,const DeepCollectionEquality().hash(exercises),duration,notes,createdAt,updatedAt,isCompleted);

@override
String toString() {
  return 'WorkoutEntity(workoutId: $workoutId, userId: $userId, name: $name, date: $date, startTime: $startTime, exercises: $exercises, duration: $duration, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class $WorkoutEntityCopyWith<$Res>  {
  factory $WorkoutEntityCopyWith(WorkoutEntity value, $Res Function(WorkoutEntity) _then) = _$WorkoutEntityCopyWithImpl;
@useResult
$Res call({
 String workoutId, String userId, String name, DateTime date, DateTime startTime, List<ExerciseEntity> exercises, int? duration, String? notes, DateTime? createdAt, DateTime? updatedAt, bool isCompleted
});




}
/// @nodoc
class _$WorkoutEntityCopyWithImpl<$Res>
    implements $WorkoutEntityCopyWith<$Res> {
  _$WorkoutEntityCopyWithImpl(this._self, this._then);

  final WorkoutEntity _self;
  final $Res Function(WorkoutEntity) _then;

/// Create a copy of WorkoutEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workoutId = null,Object? userId = null,Object? name = null,Object? date = null,Object? startTime = null,Object? exercises = null,Object? duration = freezed,Object? notes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? isCompleted = null,}) {
  return _then(_self.copyWith(
workoutId: null == workoutId ? _self.workoutId : workoutId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,exercises: null == exercises ? _self.exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<ExerciseEntity>,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutEntity].
extension WorkoutEntityPatterns on WorkoutEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutEntity value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String workoutId,  String userId,  String name,  DateTime date,  DateTime startTime,  List<ExerciseEntity> exercises,  int? duration,  String? notes,  DateTime? createdAt,  DateTime? updatedAt,  bool isCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutEntity() when $default != null:
return $default(_that.workoutId,_that.userId,_that.name,_that.date,_that.startTime,_that.exercises,_that.duration,_that.notes,_that.createdAt,_that.updatedAt,_that.isCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String workoutId,  String userId,  String name,  DateTime date,  DateTime startTime,  List<ExerciseEntity> exercises,  int? duration,  String? notes,  DateTime? createdAt,  DateTime? updatedAt,  bool isCompleted)  $default,) {final _that = this;
switch (_that) {
case _WorkoutEntity():
return $default(_that.workoutId,_that.userId,_that.name,_that.date,_that.startTime,_that.exercises,_that.duration,_that.notes,_that.createdAt,_that.updatedAt,_that.isCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String workoutId,  String userId,  String name,  DateTime date,  DateTime startTime,  List<ExerciseEntity> exercises,  int? duration,  String? notes,  DateTime? createdAt,  DateTime? updatedAt,  bool isCompleted)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutEntity() when $default != null:
return $default(_that.workoutId,_that.userId,_that.name,_that.date,_that.startTime,_that.exercises,_that.duration,_that.notes,_that.createdAt,_that.updatedAt,_that.isCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkoutEntity implements WorkoutEntity {
  const _WorkoutEntity({required this.workoutId, required this.userId, required this.name, required this.date, required this.startTime, required final  List<ExerciseEntity> exercises, this.duration, this.notes, this.createdAt, this.updatedAt, this.isCompleted = false}): _exercises = exercises;
  factory _WorkoutEntity.fromJson(Map<String, dynamic> json) => _$WorkoutEntityFromJson(json);

@override final  String workoutId;
@override final  String userId;
@override final  String name;
@override final  DateTime date;
@override final  DateTime startTime;
 final  List<ExerciseEntity> _exercises;
@override List<ExerciseEntity> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}

@override final  int? duration;
@override final  String? notes;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey() final  bool isCompleted;

/// Create a copy of WorkoutEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutEntityCopyWith<_WorkoutEntity> get copyWith => __$WorkoutEntityCopyWithImpl<_WorkoutEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkoutEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutEntity&&(identical(other.workoutId, workoutId) || other.workoutId == workoutId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&const DeepCollectionEquality().equals(other._exercises, _exercises)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workoutId,userId,name,date,startTime,const DeepCollectionEquality().hash(_exercises),duration,notes,createdAt,updatedAt,isCompleted);

@override
String toString() {
  return 'WorkoutEntity(workoutId: $workoutId, userId: $userId, name: $name, date: $date, startTime: $startTime, exercises: $exercises, duration: $duration, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$WorkoutEntityCopyWith<$Res> implements $WorkoutEntityCopyWith<$Res> {
  factory _$WorkoutEntityCopyWith(_WorkoutEntity value, $Res Function(_WorkoutEntity) _then) = __$WorkoutEntityCopyWithImpl;
@override @useResult
$Res call({
 String workoutId, String userId, String name, DateTime date, DateTime startTime, List<ExerciseEntity> exercises, int? duration, String? notes, DateTime? createdAt, DateTime? updatedAt, bool isCompleted
});




}
/// @nodoc
class __$WorkoutEntityCopyWithImpl<$Res>
    implements _$WorkoutEntityCopyWith<$Res> {
  __$WorkoutEntityCopyWithImpl(this._self, this._then);

  final _WorkoutEntity _self;
  final $Res Function(_WorkoutEntity) _then;

/// Create a copy of WorkoutEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workoutId = null,Object? userId = null,Object? name = null,Object? date = null,Object? startTime = null,Object? exercises = null,Object? duration = freezed,Object? notes = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? isCompleted = null,}) {
  return _then(_WorkoutEntity(
workoutId: null == workoutId ? _self.workoutId : workoutId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,exercises: null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<ExerciseEntity>,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
