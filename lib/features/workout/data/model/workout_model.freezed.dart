// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutModel {

 String get workoutId; String get userId; String get name;@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime get date;@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime get startTime;@JsonKey(toJson: _exercisesToJson, fromJson: _exercisesFromJson) List<ExerciseModel> get exercises; DateTime? get endTime; int? get duration;@JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp) DateTime? get createdAt;@JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp) DateTime? get updatedAt; bool get isCompleted;
/// Create a copy of WorkoutModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutModelCopyWith<WorkoutModel> get copyWith => _$WorkoutModelCopyWithImpl<WorkoutModel>(this as WorkoutModel, _$identity);

  /// Serializes this WorkoutModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutModel&&(identical(other.workoutId, workoutId) || other.workoutId == workoutId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&const DeepCollectionEquality().equals(other.exercises, exercises)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workoutId,userId,name,date,startTime,const DeepCollectionEquality().hash(exercises),endTime,duration,createdAt,updatedAt,isCompleted);

@override
String toString() {
  return 'WorkoutModel(workoutId: $workoutId, userId: $userId, name: $name, date: $date, startTime: $startTime, exercises: $exercises, endTime: $endTime, duration: $duration, createdAt: $createdAt, updatedAt: $updatedAt, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class $WorkoutModelCopyWith<$Res>  {
  factory $WorkoutModelCopyWith(WorkoutModel value, $Res Function(WorkoutModel) _then) = _$WorkoutModelCopyWithImpl;
@useResult
$Res call({
 String workoutId, String userId, String name,@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime date,@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime startTime,@JsonKey(toJson: _exercisesToJson, fromJson: _exercisesFromJson) List<ExerciseModel> exercises, DateTime? endTime, int? duration,@JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp) DateTime? createdAt,@JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp) DateTime? updatedAt, bool isCompleted
});




}
/// @nodoc
class _$WorkoutModelCopyWithImpl<$Res>
    implements $WorkoutModelCopyWith<$Res> {
  _$WorkoutModelCopyWithImpl(this._self, this._then);

  final WorkoutModel _self;
  final $Res Function(WorkoutModel) _then;

/// Create a copy of WorkoutModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workoutId = null,Object? userId = null,Object? name = null,Object? date = null,Object? startTime = null,Object? exercises = null,Object? endTime = freezed,Object? duration = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? isCompleted = null,}) {
  return _then(_self.copyWith(
workoutId: null == workoutId ? _self.workoutId : workoutId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,exercises: null == exercises ? _self.exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<ExerciseModel>,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutModel].
extension WorkoutModelPatterns on WorkoutModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String workoutId,  String userId,  String name, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime date, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime startTime, @JsonKey(toJson: _exercisesToJson, fromJson: _exercisesFromJson)  List<ExerciseModel> exercises,  DateTime? endTime,  int? duration, @JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp)  DateTime? createdAt, @JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp)  DateTime? updatedAt,  bool isCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutModel() when $default != null:
return $default(_that.workoutId,_that.userId,_that.name,_that.date,_that.startTime,_that.exercises,_that.endTime,_that.duration,_that.createdAt,_that.updatedAt,_that.isCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String workoutId,  String userId,  String name, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime date, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime startTime, @JsonKey(toJson: _exercisesToJson, fromJson: _exercisesFromJson)  List<ExerciseModel> exercises,  DateTime? endTime,  int? duration, @JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp)  DateTime? createdAt, @JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp)  DateTime? updatedAt,  bool isCompleted)  $default,) {final _that = this;
switch (_that) {
case _WorkoutModel():
return $default(_that.workoutId,_that.userId,_that.name,_that.date,_that.startTime,_that.exercises,_that.endTime,_that.duration,_that.createdAt,_that.updatedAt,_that.isCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String workoutId,  String userId,  String name, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime date, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime startTime, @JsonKey(toJson: _exercisesToJson, fromJson: _exercisesFromJson)  List<ExerciseModel> exercises,  DateTime? endTime,  int? duration, @JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp)  DateTime? createdAt, @JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp)  DateTime? updatedAt,  bool isCompleted)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutModel() when $default != null:
return $default(_that.workoutId,_that.userId,_that.name,_that.date,_that.startTime,_that.exercises,_that.endTime,_that.duration,_that.createdAt,_that.updatedAt,_that.isCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkoutModel extends WorkoutModel {
  const _WorkoutModel({required this.workoutId, required this.userId, required this.name, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) required this.date, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) required this.startTime, @JsonKey(toJson: _exercisesToJson, fromJson: _exercisesFromJson) required final  List<ExerciseModel> exercises, this.endTime, this.duration, @JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp) this.createdAt, @JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp) this.updatedAt, this.isCompleted = false}): _exercises = exercises,super._();
  factory _WorkoutModel.fromJson(Map<String, dynamic> json) => _$WorkoutModelFromJson(json);

@override final  String workoutId;
@override final  String userId;
@override final  String name;
@override@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) final  DateTime date;
@override@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) final  DateTime startTime;
 final  List<ExerciseModel> _exercises;
@override@JsonKey(toJson: _exercisesToJson, fromJson: _exercisesFromJson) List<ExerciseModel> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}

@override final  DateTime? endTime;
@override final  int? duration;
@override@JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp) final  DateTime? createdAt;
@override@JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp) final  DateTime? updatedAt;
@override@JsonKey() final  bool isCompleted;

/// Create a copy of WorkoutModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutModelCopyWith<_WorkoutModel> get copyWith => __$WorkoutModelCopyWithImpl<_WorkoutModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkoutModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutModel&&(identical(other.workoutId, workoutId) || other.workoutId == workoutId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&const DeepCollectionEquality().equals(other._exercises, _exercises)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workoutId,userId,name,date,startTime,const DeepCollectionEquality().hash(_exercises),endTime,duration,createdAt,updatedAt,isCompleted);

@override
String toString() {
  return 'WorkoutModel(workoutId: $workoutId, userId: $userId, name: $name, date: $date, startTime: $startTime, exercises: $exercises, endTime: $endTime, duration: $duration, createdAt: $createdAt, updatedAt: $updatedAt, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$WorkoutModelCopyWith<$Res> implements $WorkoutModelCopyWith<$Res> {
  factory _$WorkoutModelCopyWith(_WorkoutModel value, $Res Function(_WorkoutModel) _then) = __$WorkoutModelCopyWithImpl;
@override @useResult
$Res call({
 String workoutId, String userId, String name,@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime date,@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime startTime,@JsonKey(toJson: _exercisesToJson, fromJson: _exercisesFromJson) List<ExerciseModel> exercises, DateTime? endTime, int? duration,@JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp) DateTime? createdAt,@JsonKey(fromJson: _fromTimestampNullable, toJson: _toTimestamp) DateTime? updatedAt, bool isCompleted
});




}
/// @nodoc
class __$WorkoutModelCopyWithImpl<$Res>
    implements _$WorkoutModelCopyWith<$Res> {
  __$WorkoutModelCopyWithImpl(this._self, this._then);

  final _WorkoutModel _self;
  final $Res Function(_WorkoutModel) _then;

/// Create a copy of WorkoutModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workoutId = null,Object? userId = null,Object? name = null,Object? date = null,Object? startTime = null,Object? exercises = null,Object? endTime = freezed,Object? duration = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? isCompleted = null,}) {
  return _then(_WorkoutModel(
workoutId: null == workoutId ? _self.workoutId : workoutId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,exercises: null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<ExerciseModel>,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
