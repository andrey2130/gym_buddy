// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkoutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent()';
}


}

/// @nodoc
class $WorkoutEventCopyWith<$Res>  {
$WorkoutEventCopyWith(WorkoutEvent _, $Res Function(WorkoutEvent) __);
}


/// Adds pattern-matching-related methods to [WorkoutEvent].
extension WorkoutEventPatterns on WorkoutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Started value)?  started,TResult Function( CreateWorkout value)?  createWorkout,TResult Function( LoadWorkouts value)?  loadWorkouts,TResult Function( UpdateWorkout value)?  updateWorkout,TResult Function( UpdateWorkoutExercises value)?  updateWorkoutExercises,TResult Function( DeleteWorkout value)?  deleteWorkout,TResult Function( AddExerciseToWorkout value)?  addExerciseToWorkout,TResult Function( UpdateExerciseInWorkout value)?  updateExerciseInWorkout,TResult Function( RemoveExerciseFromWorkout value)?  removeExerciseFromWorkout,TResult Function( EndWorkoutSession value)?  endWorkoutSession,TResult Function( CalculateStats value)?  calculateStats,TResult Function( FilterWorkouts value)?  filterWorkouts,TResult Function( FormatTime value)?  formatTime,TResult Function( FormatDuration value)?  formatDuration,TResult Function( ValidateWorkoutCreation value)?  validateWorkoutCreation,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case CreateWorkout() when createWorkout != null:
return createWorkout(_that);case LoadWorkouts() when loadWorkouts != null:
return loadWorkouts(_that);case UpdateWorkout() when updateWorkout != null:
return updateWorkout(_that);case UpdateWorkoutExercises() when updateWorkoutExercises != null:
return updateWorkoutExercises(_that);case DeleteWorkout() when deleteWorkout != null:
return deleteWorkout(_that);case AddExerciseToWorkout() when addExerciseToWorkout != null:
return addExerciseToWorkout(_that);case UpdateExerciseInWorkout() when updateExerciseInWorkout != null:
return updateExerciseInWorkout(_that);case RemoveExerciseFromWorkout() when removeExerciseFromWorkout != null:
return removeExerciseFromWorkout(_that);case EndWorkoutSession() when endWorkoutSession != null:
return endWorkoutSession(_that);case CalculateStats() when calculateStats != null:
return calculateStats(_that);case FilterWorkouts() when filterWorkouts != null:
return filterWorkouts(_that);case FormatTime() when formatTime != null:
return formatTime(_that);case FormatDuration() when formatDuration != null:
return formatDuration(_that);case ValidateWorkoutCreation() when validateWorkoutCreation != null:
return validateWorkoutCreation(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Started value)  started,required TResult Function( CreateWorkout value)  createWorkout,required TResult Function( LoadWorkouts value)  loadWorkouts,required TResult Function( UpdateWorkout value)  updateWorkout,required TResult Function( UpdateWorkoutExercises value)  updateWorkoutExercises,required TResult Function( DeleteWorkout value)  deleteWorkout,required TResult Function( AddExerciseToWorkout value)  addExerciseToWorkout,required TResult Function( UpdateExerciseInWorkout value)  updateExerciseInWorkout,required TResult Function( RemoveExerciseFromWorkout value)  removeExerciseFromWorkout,required TResult Function( EndWorkoutSession value)  endWorkoutSession,required TResult Function( CalculateStats value)  calculateStats,required TResult Function( FilterWorkouts value)  filterWorkouts,required TResult Function( FormatTime value)  formatTime,required TResult Function( FormatDuration value)  formatDuration,required TResult Function( ValidateWorkoutCreation value)  validateWorkoutCreation,}){
final _that = this;
switch (_that) {
case Started():
return started(_that);case CreateWorkout():
return createWorkout(_that);case LoadWorkouts():
return loadWorkouts(_that);case UpdateWorkout():
return updateWorkout(_that);case UpdateWorkoutExercises():
return updateWorkoutExercises(_that);case DeleteWorkout():
return deleteWorkout(_that);case AddExerciseToWorkout():
return addExerciseToWorkout(_that);case UpdateExerciseInWorkout():
return updateExerciseInWorkout(_that);case RemoveExerciseFromWorkout():
return removeExerciseFromWorkout(_that);case EndWorkoutSession():
return endWorkoutSession(_that);case CalculateStats():
return calculateStats(_that);case FilterWorkouts():
return filterWorkouts(_that);case FormatTime():
return formatTime(_that);case FormatDuration():
return formatDuration(_that);case ValidateWorkoutCreation():
return validateWorkoutCreation(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Started value)?  started,TResult? Function( CreateWorkout value)?  createWorkout,TResult? Function( LoadWorkouts value)?  loadWorkouts,TResult? Function( UpdateWorkout value)?  updateWorkout,TResult? Function( UpdateWorkoutExercises value)?  updateWorkoutExercises,TResult? Function( DeleteWorkout value)?  deleteWorkout,TResult? Function( AddExerciseToWorkout value)?  addExerciseToWorkout,TResult? Function( UpdateExerciseInWorkout value)?  updateExerciseInWorkout,TResult? Function( RemoveExerciseFromWorkout value)?  removeExerciseFromWorkout,TResult? Function( EndWorkoutSession value)?  endWorkoutSession,TResult? Function( CalculateStats value)?  calculateStats,TResult? Function( FilterWorkouts value)?  filterWorkouts,TResult? Function( FormatTime value)?  formatTime,TResult? Function( FormatDuration value)?  formatDuration,TResult? Function( ValidateWorkoutCreation value)?  validateWorkoutCreation,}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case CreateWorkout() when createWorkout != null:
return createWorkout(_that);case LoadWorkouts() when loadWorkouts != null:
return loadWorkouts(_that);case UpdateWorkout() when updateWorkout != null:
return updateWorkout(_that);case UpdateWorkoutExercises() when updateWorkoutExercises != null:
return updateWorkoutExercises(_that);case DeleteWorkout() when deleteWorkout != null:
return deleteWorkout(_that);case AddExerciseToWorkout() when addExerciseToWorkout != null:
return addExerciseToWorkout(_that);case UpdateExerciseInWorkout() when updateExerciseInWorkout != null:
return updateExerciseInWorkout(_that);case RemoveExerciseFromWorkout() when removeExerciseFromWorkout != null:
return removeExerciseFromWorkout(_that);case EndWorkoutSession() when endWorkoutSession != null:
return endWorkoutSession(_that);case CalculateStats() when calculateStats != null:
return calculateStats(_that);case FilterWorkouts() when filterWorkouts != null:
return filterWorkouts(_that);case FormatTime() when formatTime != null:
return formatTime(_that);case FormatDuration() when formatDuration != null:
return formatDuration(_that);case ValidateWorkoutCreation() when validateWorkoutCreation != null:
return validateWorkoutCreation(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( WorkoutEntity workout)?  createWorkout,TResult Function()?  loadWorkouts,TResult Function( WorkoutEntity workout)?  updateWorkout,TResult Function( WorkoutEntity workout)?  updateWorkoutExercises,TResult Function( DeleteWorkoutParams params)?  deleteWorkout,TResult Function( AddExerciseParams params)?  addExerciseToWorkout,TResult Function( UpdateExerciseParams params)?  updateExerciseInWorkout,TResult Function( RemoveExerciseParams params)?  removeExerciseFromWorkout,TResult Function( EndWorkoutSessionParams params)?  endWorkoutSession,TResult Function( List<WorkoutEntity> workouts)?  calculateStats,TResult Function( List<WorkoutEntity> workouts,  WorkoutFilterType filterType)?  filterWorkouts,TResult Function( DateTime dateTime,  TimeFormatType formatType)?  formatTime,TResult Function( int minutes)?  formatDuration,TResult Function( ValidateWorkoutCreationParams params)?  validateWorkoutCreation,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case CreateWorkout() when createWorkout != null:
return createWorkout(_that.workout);case LoadWorkouts() when loadWorkouts != null:
return loadWorkouts();case UpdateWorkout() when updateWorkout != null:
return updateWorkout(_that.workout);case UpdateWorkoutExercises() when updateWorkoutExercises != null:
return updateWorkoutExercises(_that.workout);case DeleteWorkout() when deleteWorkout != null:
return deleteWorkout(_that.params);case AddExerciseToWorkout() when addExerciseToWorkout != null:
return addExerciseToWorkout(_that.params);case UpdateExerciseInWorkout() when updateExerciseInWorkout != null:
return updateExerciseInWorkout(_that.params);case RemoveExerciseFromWorkout() when removeExerciseFromWorkout != null:
return removeExerciseFromWorkout(_that.params);case EndWorkoutSession() when endWorkoutSession != null:
return endWorkoutSession(_that.params);case CalculateStats() when calculateStats != null:
return calculateStats(_that.workouts);case FilterWorkouts() when filterWorkouts != null:
return filterWorkouts(_that.workouts,_that.filterType);case FormatTime() when formatTime != null:
return formatTime(_that.dateTime,_that.formatType);case FormatDuration() when formatDuration != null:
return formatDuration(_that.minutes);case ValidateWorkoutCreation() when validateWorkoutCreation != null:
return validateWorkoutCreation(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( WorkoutEntity workout)  createWorkout,required TResult Function()  loadWorkouts,required TResult Function( WorkoutEntity workout)  updateWorkout,required TResult Function( WorkoutEntity workout)  updateWorkoutExercises,required TResult Function( DeleteWorkoutParams params)  deleteWorkout,required TResult Function( AddExerciseParams params)  addExerciseToWorkout,required TResult Function( UpdateExerciseParams params)  updateExerciseInWorkout,required TResult Function( RemoveExerciseParams params)  removeExerciseFromWorkout,required TResult Function( EndWorkoutSessionParams params)  endWorkoutSession,required TResult Function( List<WorkoutEntity> workouts)  calculateStats,required TResult Function( List<WorkoutEntity> workouts,  WorkoutFilterType filterType)  filterWorkouts,required TResult Function( DateTime dateTime,  TimeFormatType formatType)  formatTime,required TResult Function( int minutes)  formatDuration,required TResult Function( ValidateWorkoutCreationParams params)  validateWorkoutCreation,}) {final _that = this;
switch (_that) {
case Started():
return started();case CreateWorkout():
return createWorkout(_that.workout);case LoadWorkouts():
return loadWorkouts();case UpdateWorkout():
return updateWorkout(_that.workout);case UpdateWorkoutExercises():
return updateWorkoutExercises(_that.workout);case DeleteWorkout():
return deleteWorkout(_that.params);case AddExerciseToWorkout():
return addExerciseToWorkout(_that.params);case UpdateExerciseInWorkout():
return updateExerciseInWorkout(_that.params);case RemoveExerciseFromWorkout():
return removeExerciseFromWorkout(_that.params);case EndWorkoutSession():
return endWorkoutSession(_that.params);case CalculateStats():
return calculateStats(_that.workouts);case FilterWorkouts():
return filterWorkouts(_that.workouts,_that.filterType);case FormatTime():
return formatTime(_that.dateTime,_that.formatType);case FormatDuration():
return formatDuration(_that.minutes);case ValidateWorkoutCreation():
return validateWorkoutCreation(_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( WorkoutEntity workout)?  createWorkout,TResult? Function()?  loadWorkouts,TResult? Function( WorkoutEntity workout)?  updateWorkout,TResult? Function( WorkoutEntity workout)?  updateWorkoutExercises,TResult? Function( DeleteWorkoutParams params)?  deleteWorkout,TResult? Function( AddExerciseParams params)?  addExerciseToWorkout,TResult? Function( UpdateExerciseParams params)?  updateExerciseInWorkout,TResult? Function( RemoveExerciseParams params)?  removeExerciseFromWorkout,TResult? Function( EndWorkoutSessionParams params)?  endWorkoutSession,TResult? Function( List<WorkoutEntity> workouts)?  calculateStats,TResult? Function( List<WorkoutEntity> workouts,  WorkoutFilterType filterType)?  filterWorkouts,TResult? Function( DateTime dateTime,  TimeFormatType formatType)?  formatTime,TResult? Function( int minutes)?  formatDuration,TResult? Function( ValidateWorkoutCreationParams params)?  validateWorkoutCreation,}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case CreateWorkout() when createWorkout != null:
return createWorkout(_that.workout);case LoadWorkouts() when loadWorkouts != null:
return loadWorkouts();case UpdateWorkout() when updateWorkout != null:
return updateWorkout(_that.workout);case UpdateWorkoutExercises() when updateWorkoutExercises != null:
return updateWorkoutExercises(_that.workout);case DeleteWorkout() when deleteWorkout != null:
return deleteWorkout(_that.params);case AddExerciseToWorkout() when addExerciseToWorkout != null:
return addExerciseToWorkout(_that.params);case UpdateExerciseInWorkout() when updateExerciseInWorkout != null:
return updateExerciseInWorkout(_that.params);case RemoveExerciseFromWorkout() when removeExerciseFromWorkout != null:
return removeExerciseFromWorkout(_that.params);case EndWorkoutSession() when endWorkoutSession != null:
return endWorkoutSession(_that.params);case CalculateStats() when calculateStats != null:
return calculateStats(_that.workouts);case FilterWorkouts() when filterWorkouts != null:
return filterWorkouts(_that.workouts,_that.filterType);case FormatTime() when formatTime != null:
return formatTime(_that.dateTime,_that.formatType);case FormatDuration() when formatDuration != null:
return formatDuration(_that.minutes);case ValidateWorkoutCreation() when validateWorkoutCreation != null:
return validateWorkoutCreation(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class Started implements WorkoutEvent {
  const Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.started()';
}


}




/// @nodoc


class CreateWorkout implements WorkoutEvent {
  const CreateWorkout(this.workout);
  

 final  WorkoutEntity workout;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateWorkoutCopyWith<CreateWorkout> get copyWith => _$CreateWorkoutCopyWithImpl<CreateWorkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateWorkout&&(identical(other.workout, workout) || other.workout == workout));
}


@override
int get hashCode => Object.hash(runtimeType,workout);

@override
String toString() {
  return 'WorkoutEvent.createWorkout(workout: $workout)';
}


}

/// @nodoc
abstract mixin class $CreateWorkoutCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $CreateWorkoutCopyWith(CreateWorkout value, $Res Function(CreateWorkout) _then) = _$CreateWorkoutCopyWithImpl;
@useResult
$Res call({
 WorkoutEntity workout
});


$WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class _$CreateWorkoutCopyWithImpl<$Res>
    implements $CreateWorkoutCopyWith<$Res> {
  _$CreateWorkoutCopyWithImpl(this._self, this._then);

  final CreateWorkout _self;
  final $Res Function(CreateWorkout) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workout = null,}) {
  return _then(CreateWorkout(
null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}

/// @nodoc


class LoadWorkouts implements WorkoutEvent {
  const LoadWorkouts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadWorkouts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.loadWorkouts()';
}


}




/// @nodoc


class UpdateWorkout implements WorkoutEvent {
  const UpdateWorkout(this.workout);
  

 final  WorkoutEntity workout;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateWorkoutCopyWith<UpdateWorkout> get copyWith => _$UpdateWorkoutCopyWithImpl<UpdateWorkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateWorkout&&(identical(other.workout, workout) || other.workout == workout));
}


@override
int get hashCode => Object.hash(runtimeType,workout);

@override
String toString() {
  return 'WorkoutEvent.updateWorkout(workout: $workout)';
}


}

/// @nodoc
abstract mixin class $UpdateWorkoutCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $UpdateWorkoutCopyWith(UpdateWorkout value, $Res Function(UpdateWorkout) _then) = _$UpdateWorkoutCopyWithImpl;
@useResult
$Res call({
 WorkoutEntity workout
});


$WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class _$UpdateWorkoutCopyWithImpl<$Res>
    implements $UpdateWorkoutCopyWith<$Res> {
  _$UpdateWorkoutCopyWithImpl(this._self, this._then);

  final UpdateWorkout _self;
  final $Res Function(UpdateWorkout) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workout = null,}) {
  return _then(UpdateWorkout(
null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}

/// @nodoc


class UpdateWorkoutExercises implements WorkoutEvent {
  const UpdateWorkoutExercises(this.workout);
  

 final  WorkoutEntity workout;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateWorkoutExercisesCopyWith<UpdateWorkoutExercises> get copyWith => _$UpdateWorkoutExercisesCopyWithImpl<UpdateWorkoutExercises>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateWorkoutExercises&&(identical(other.workout, workout) || other.workout == workout));
}


@override
int get hashCode => Object.hash(runtimeType,workout);

@override
String toString() {
  return 'WorkoutEvent.updateWorkoutExercises(workout: $workout)';
}


}

/// @nodoc
abstract mixin class $UpdateWorkoutExercisesCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $UpdateWorkoutExercisesCopyWith(UpdateWorkoutExercises value, $Res Function(UpdateWorkoutExercises) _then) = _$UpdateWorkoutExercisesCopyWithImpl;
@useResult
$Res call({
 WorkoutEntity workout
});


$WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class _$UpdateWorkoutExercisesCopyWithImpl<$Res>
    implements $UpdateWorkoutExercisesCopyWith<$Res> {
  _$UpdateWorkoutExercisesCopyWithImpl(this._self, this._then);

  final UpdateWorkoutExercises _self;
  final $Res Function(UpdateWorkoutExercises) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workout = null,}) {
  return _then(UpdateWorkoutExercises(
null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}

/// @nodoc


class DeleteWorkout implements WorkoutEvent {
  const DeleteWorkout(this.params);
  

 final  DeleteWorkoutParams params;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteWorkoutCopyWith<DeleteWorkout> get copyWith => _$DeleteWorkoutCopyWithImpl<DeleteWorkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteWorkout&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'WorkoutEvent.deleteWorkout(params: $params)';
}


}

/// @nodoc
abstract mixin class $DeleteWorkoutCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $DeleteWorkoutCopyWith(DeleteWorkout value, $Res Function(DeleteWorkout) _then) = _$DeleteWorkoutCopyWithImpl;
@useResult
$Res call({
 DeleteWorkoutParams params
});


$DeleteWorkoutParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$DeleteWorkoutCopyWithImpl<$Res>
    implements $DeleteWorkoutCopyWith<$Res> {
  _$DeleteWorkoutCopyWithImpl(this._self, this._then);

  final DeleteWorkout _self;
  final $Res Function(DeleteWorkout) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(DeleteWorkout(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as DeleteWorkoutParams,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeleteWorkoutParamsCopyWith<$Res> get params {
  
  return $DeleteWorkoutParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class AddExerciseToWorkout implements WorkoutEvent {
  const AddExerciseToWorkout(this.params);
  

 final  AddExerciseParams params;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExerciseToWorkoutCopyWith<AddExerciseToWorkout> get copyWith => _$AddExerciseToWorkoutCopyWithImpl<AddExerciseToWorkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExerciseToWorkout&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'WorkoutEvent.addExerciseToWorkout(params: $params)';
}


}

/// @nodoc
abstract mixin class $AddExerciseToWorkoutCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $AddExerciseToWorkoutCopyWith(AddExerciseToWorkout value, $Res Function(AddExerciseToWorkout) _then) = _$AddExerciseToWorkoutCopyWithImpl;
@useResult
$Res call({
 AddExerciseParams params
});


$AddExerciseParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$AddExerciseToWorkoutCopyWithImpl<$Res>
    implements $AddExerciseToWorkoutCopyWith<$Res> {
  _$AddExerciseToWorkoutCopyWithImpl(this._self, this._then);

  final AddExerciseToWorkout _self;
  final $Res Function(AddExerciseToWorkout) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(AddExerciseToWorkout(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddExerciseParams,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddExerciseParamsCopyWith<$Res> get params {
  
  return $AddExerciseParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class UpdateExerciseInWorkout implements WorkoutEvent {
  const UpdateExerciseInWorkout(this.params);
  

 final  UpdateExerciseParams params;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateExerciseInWorkoutCopyWith<UpdateExerciseInWorkout> get copyWith => _$UpdateExerciseInWorkoutCopyWithImpl<UpdateExerciseInWorkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateExerciseInWorkout&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'WorkoutEvent.updateExerciseInWorkout(params: $params)';
}


}

/// @nodoc
abstract mixin class $UpdateExerciseInWorkoutCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $UpdateExerciseInWorkoutCopyWith(UpdateExerciseInWorkout value, $Res Function(UpdateExerciseInWorkout) _then) = _$UpdateExerciseInWorkoutCopyWithImpl;
@useResult
$Res call({
 UpdateExerciseParams params
});


$UpdateExerciseParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$UpdateExerciseInWorkoutCopyWithImpl<$Res>
    implements $UpdateExerciseInWorkoutCopyWith<$Res> {
  _$UpdateExerciseInWorkoutCopyWithImpl(this._self, this._then);

  final UpdateExerciseInWorkout _self;
  final $Res Function(UpdateExerciseInWorkout) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(UpdateExerciseInWorkout(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as UpdateExerciseParams,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateExerciseParamsCopyWith<$Res> get params {
  
  return $UpdateExerciseParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class RemoveExerciseFromWorkout implements WorkoutEvent {
  const RemoveExerciseFromWorkout(this.params);
  

 final  RemoveExerciseParams params;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveExerciseFromWorkoutCopyWith<RemoveExerciseFromWorkout> get copyWith => _$RemoveExerciseFromWorkoutCopyWithImpl<RemoveExerciseFromWorkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveExerciseFromWorkout&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'WorkoutEvent.removeExerciseFromWorkout(params: $params)';
}


}

/// @nodoc
abstract mixin class $RemoveExerciseFromWorkoutCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $RemoveExerciseFromWorkoutCopyWith(RemoveExerciseFromWorkout value, $Res Function(RemoveExerciseFromWorkout) _then) = _$RemoveExerciseFromWorkoutCopyWithImpl;
@useResult
$Res call({
 RemoveExerciseParams params
});


$RemoveExerciseParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$RemoveExerciseFromWorkoutCopyWithImpl<$Res>
    implements $RemoveExerciseFromWorkoutCopyWith<$Res> {
  _$RemoveExerciseFromWorkoutCopyWithImpl(this._self, this._then);

  final RemoveExerciseFromWorkout _self;
  final $Res Function(RemoveExerciseFromWorkout) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(RemoveExerciseFromWorkout(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as RemoveExerciseParams,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RemoveExerciseParamsCopyWith<$Res> get params {
  
  return $RemoveExerciseParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class EndWorkoutSession implements WorkoutEvent {
  const EndWorkoutSession(this.params);
  

 final  EndWorkoutSessionParams params;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndWorkoutSessionCopyWith<EndWorkoutSession> get copyWith => _$EndWorkoutSessionCopyWithImpl<EndWorkoutSession>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndWorkoutSession&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'WorkoutEvent.endWorkoutSession(params: $params)';
}


}

/// @nodoc
abstract mixin class $EndWorkoutSessionCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $EndWorkoutSessionCopyWith(EndWorkoutSession value, $Res Function(EndWorkoutSession) _then) = _$EndWorkoutSessionCopyWithImpl;
@useResult
$Res call({
 EndWorkoutSessionParams params
});


$EndWorkoutSessionParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$EndWorkoutSessionCopyWithImpl<$Res>
    implements $EndWorkoutSessionCopyWith<$Res> {
  _$EndWorkoutSessionCopyWithImpl(this._self, this._then);

  final EndWorkoutSession _self;
  final $Res Function(EndWorkoutSession) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(EndWorkoutSession(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as EndWorkoutSessionParams,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EndWorkoutSessionParamsCopyWith<$Res> get params {
  
  return $EndWorkoutSessionParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class CalculateStats implements WorkoutEvent {
  const CalculateStats(final  List<WorkoutEntity> workouts): _workouts = workouts;
  

 final  List<WorkoutEntity> _workouts;
 List<WorkoutEntity> get workouts {
  if (_workouts is EqualUnmodifiableListView) return _workouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workouts);
}


/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalculateStatsCopyWith<CalculateStats> get copyWith => _$CalculateStatsCopyWithImpl<CalculateStats>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalculateStats&&const DeepCollectionEquality().equals(other._workouts, _workouts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workouts));

@override
String toString() {
  return 'WorkoutEvent.calculateStats(workouts: $workouts)';
}


}

/// @nodoc
abstract mixin class $CalculateStatsCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $CalculateStatsCopyWith(CalculateStats value, $Res Function(CalculateStats) _then) = _$CalculateStatsCopyWithImpl;
@useResult
$Res call({
 List<WorkoutEntity> workouts
});




}
/// @nodoc
class _$CalculateStatsCopyWithImpl<$Res>
    implements $CalculateStatsCopyWith<$Res> {
  _$CalculateStatsCopyWithImpl(this._self, this._then);

  final CalculateStats _self;
  final $Res Function(CalculateStats) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workouts = null,}) {
  return _then(CalculateStats(
null == workouts ? _self._workouts : workouts // ignore: cast_nullable_to_non_nullable
as List<WorkoutEntity>,
  ));
}


}

/// @nodoc


class FilterWorkouts implements WorkoutEvent {
  const FilterWorkouts(final  List<WorkoutEntity> workouts, this.filterType): _workouts = workouts;
  

 final  List<WorkoutEntity> _workouts;
 List<WorkoutEntity> get workouts {
  if (_workouts is EqualUnmodifiableListView) return _workouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workouts);
}

 final  WorkoutFilterType filterType;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterWorkoutsCopyWith<FilterWorkouts> get copyWith => _$FilterWorkoutsCopyWithImpl<FilterWorkouts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterWorkouts&&const DeepCollectionEquality().equals(other._workouts, _workouts)&&(identical(other.filterType, filterType) || other.filterType == filterType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workouts),filterType);

@override
String toString() {
  return 'WorkoutEvent.filterWorkouts(workouts: $workouts, filterType: $filterType)';
}


}

/// @nodoc
abstract mixin class $FilterWorkoutsCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $FilterWorkoutsCopyWith(FilterWorkouts value, $Res Function(FilterWorkouts) _then) = _$FilterWorkoutsCopyWithImpl;
@useResult
$Res call({
 List<WorkoutEntity> workouts, WorkoutFilterType filterType
});




}
/// @nodoc
class _$FilterWorkoutsCopyWithImpl<$Res>
    implements $FilterWorkoutsCopyWith<$Res> {
  _$FilterWorkoutsCopyWithImpl(this._self, this._then);

  final FilterWorkouts _self;
  final $Res Function(FilterWorkouts) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workouts = null,Object? filterType = null,}) {
  return _then(FilterWorkouts(
null == workouts ? _self._workouts : workouts // ignore: cast_nullable_to_non_nullable
as List<WorkoutEntity>,null == filterType ? _self.filterType : filterType // ignore: cast_nullable_to_non_nullable
as WorkoutFilterType,
  ));
}


}

/// @nodoc


class FormatTime implements WorkoutEvent {
  const FormatTime(this.dateTime, this.formatType);
  

 final  DateTime dateTime;
 final  TimeFormatType formatType;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatTimeCopyWith<FormatTime> get copyWith => _$FormatTimeCopyWithImpl<FormatTime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatTime&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.formatType, formatType) || other.formatType == formatType));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,formatType);

@override
String toString() {
  return 'WorkoutEvent.formatTime(dateTime: $dateTime, formatType: $formatType)';
}


}

/// @nodoc
abstract mixin class $FormatTimeCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $FormatTimeCopyWith(FormatTime value, $Res Function(FormatTime) _then) = _$FormatTimeCopyWithImpl;
@useResult
$Res call({
 DateTime dateTime, TimeFormatType formatType
});




}
/// @nodoc
class _$FormatTimeCopyWithImpl<$Res>
    implements $FormatTimeCopyWith<$Res> {
  _$FormatTimeCopyWithImpl(this._self, this._then);

  final FormatTime _self;
  final $Res Function(FormatTime) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dateTime = null,Object? formatType = null,}) {
  return _then(FormatTime(
null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as DateTime,null == formatType ? _self.formatType : formatType // ignore: cast_nullable_to_non_nullable
as TimeFormatType,
  ));
}


}

/// @nodoc


class FormatDuration implements WorkoutEvent {
  const FormatDuration(this.minutes);
  

 final  int minutes;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormatDurationCopyWith<FormatDuration> get copyWith => _$FormatDurationCopyWithImpl<FormatDuration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormatDuration&&(identical(other.minutes, minutes) || other.minutes == minutes));
}


@override
int get hashCode => Object.hash(runtimeType,minutes);

@override
String toString() {
  return 'WorkoutEvent.formatDuration(minutes: $minutes)';
}


}

/// @nodoc
abstract mixin class $FormatDurationCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $FormatDurationCopyWith(FormatDuration value, $Res Function(FormatDuration) _then) = _$FormatDurationCopyWithImpl;
@useResult
$Res call({
 int minutes
});




}
/// @nodoc
class _$FormatDurationCopyWithImpl<$Res>
    implements $FormatDurationCopyWith<$Res> {
  _$FormatDurationCopyWithImpl(this._self, this._then);

  final FormatDuration _self;
  final $Res Function(FormatDuration) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? minutes = null,}) {
  return _then(FormatDuration(
null == minutes ? _self.minutes : minutes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ValidateWorkoutCreation implements WorkoutEvent {
  const ValidateWorkoutCreation(this.params);
  

 final  ValidateWorkoutCreationParams params;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateWorkoutCreationCopyWith<ValidateWorkoutCreation> get copyWith => _$ValidateWorkoutCreationCopyWithImpl<ValidateWorkoutCreation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateWorkoutCreation&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'WorkoutEvent.validateWorkoutCreation(params: $params)';
}


}

/// @nodoc
abstract mixin class $ValidateWorkoutCreationCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $ValidateWorkoutCreationCopyWith(ValidateWorkoutCreation value, $Res Function(ValidateWorkoutCreation) _then) = _$ValidateWorkoutCreationCopyWithImpl;
@useResult
$Res call({
 ValidateWorkoutCreationParams params
});


$ValidateWorkoutCreationParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$ValidateWorkoutCreationCopyWithImpl<$Res>
    implements $ValidateWorkoutCreationCopyWith<$Res> {
  _$ValidateWorkoutCreationCopyWithImpl(this._self, this._then);

  final ValidateWorkoutCreation _self;
  final $Res Function(ValidateWorkoutCreation) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(ValidateWorkoutCreation(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as ValidateWorkoutCreationParams,
  ));
}

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ValidateWorkoutCreationParamsCopyWith<$Res> get params {
  
  return $ValidateWorkoutCreationParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc
mixin _$WorkoutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutState()';
}


}

/// @nodoc
class $WorkoutStateCopyWith<$Res>  {
$WorkoutStateCopyWith(WorkoutState _, $Res Function(WorkoutState) __);
}


/// Adds pattern-matching-related methods to [WorkoutState].
extension WorkoutStatePatterns on WorkoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Loaded value)?  loaded,TResult Function( Created value)?  created,TResult Function( Updated value)?  updated,TResult Function( Deleted value)?  deleted,TResult Function( Failure value)?  failure,TResult Function( TimeFormatted value)?  timeFormatted,TResult Function( WorkoutValidated value)?  workoutValidated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case Created() when created != null:
return created(_that);case Updated() when updated != null:
return updated(_that);case Deleted() when deleted != null:
return deleted(_that);case Failure() when failure != null:
return failure(_that);case TimeFormatted() when timeFormatted != null:
return timeFormatted(_that);case WorkoutValidated() when workoutValidated != null:
return workoutValidated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Loaded value)  loaded,required TResult Function( Created value)  created,required TResult Function( Updated value)  updated,required TResult Function( Deleted value)  deleted,required TResult Function( Failure value)  failure,required TResult Function( TimeFormatted value)  timeFormatted,required TResult Function( WorkoutValidated value)  workoutValidated,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Loaded():
return loaded(_that);case Created():
return created(_that);case Updated():
return updated(_that);case Deleted():
return deleted(_that);case Failure():
return failure(_that);case TimeFormatted():
return timeFormatted(_that);case WorkoutValidated():
return workoutValidated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Loaded value)?  loaded,TResult? Function( Created value)?  created,TResult? Function( Updated value)?  updated,TResult? Function( Deleted value)?  deleted,TResult? Function( Failure value)?  failure,TResult? Function( TimeFormatted value)?  timeFormatted,TResult? Function( WorkoutValidated value)?  workoutValidated,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case Created() when created != null:
return created(_that);case Updated() when updated != null:
return updated(_that);case Deleted() when deleted != null:
return deleted(_that);case Failure() when failure != null:
return failure(_that);case TimeFormatted() when timeFormatted != null:
return timeFormatted(_that);case WorkoutValidated() when workoutValidated != null:
return workoutValidated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<WorkoutEntity> workouts,  WorkoutStats? stats,  List<WorkoutEntity> filteredWorkouts,  WorkoutFilterType selectedFilter)?  loaded,TResult Function( WorkoutEntity workout)?  created,TResult Function( WorkoutEntity workout)?  updated,TResult Function( DeleteWorkoutParams params)?  deleted,TResult Function( String message)?  failure,TResult Function( String formattedTime)?  timeFormatted,TResult Function( bool isValid)?  workoutValidated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.workouts,_that.stats,_that.filteredWorkouts,_that.selectedFilter);case Created() when created != null:
return created(_that.workout);case Updated() when updated != null:
return updated(_that.workout);case Deleted() when deleted != null:
return deleted(_that.params);case Failure() when failure != null:
return failure(_that.message);case TimeFormatted() when timeFormatted != null:
return timeFormatted(_that.formattedTime);case WorkoutValidated() when workoutValidated != null:
return workoutValidated(_that.isValid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<WorkoutEntity> workouts,  WorkoutStats? stats,  List<WorkoutEntity> filteredWorkouts,  WorkoutFilterType selectedFilter)  loaded,required TResult Function( WorkoutEntity workout)  created,required TResult Function( WorkoutEntity workout)  updated,required TResult Function( DeleteWorkoutParams params)  deleted,required TResult Function( String message)  failure,required TResult Function( String formattedTime)  timeFormatted,required TResult Function( bool isValid)  workoutValidated,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Loaded():
return loaded(_that.workouts,_that.stats,_that.filteredWorkouts,_that.selectedFilter);case Created():
return created(_that.workout);case Updated():
return updated(_that.workout);case Deleted():
return deleted(_that.params);case Failure():
return failure(_that.message);case TimeFormatted():
return timeFormatted(_that.formattedTime);case WorkoutValidated():
return workoutValidated(_that.isValid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<WorkoutEntity> workouts,  WorkoutStats? stats,  List<WorkoutEntity> filteredWorkouts,  WorkoutFilterType selectedFilter)?  loaded,TResult? Function( WorkoutEntity workout)?  created,TResult? Function( WorkoutEntity workout)?  updated,TResult? Function( DeleteWorkoutParams params)?  deleted,TResult? Function( String message)?  failure,TResult? Function( String formattedTime)?  timeFormatted,TResult? Function( bool isValid)?  workoutValidated,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.workouts,_that.stats,_that.filteredWorkouts,_that.selectedFilter);case Created() when created != null:
return created(_that.workout);case Updated() when updated != null:
return updated(_that.workout);case Deleted() when deleted != null:
return deleted(_that.params);case Failure() when failure != null:
return failure(_that.message);case TimeFormatted() when timeFormatted != null:
return timeFormatted(_that.formattedTime);case WorkoutValidated() when workoutValidated != null:
return workoutValidated(_that.isValid);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements WorkoutState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutState.initial()';
}


}




/// @nodoc


class Loading implements WorkoutState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutState.loading()';
}


}




/// @nodoc


class Loaded implements WorkoutState {
  const Loaded(final  List<WorkoutEntity> workouts, {this.stats = null, final  List<WorkoutEntity> filteredWorkouts = const [], this.selectedFilter = WorkoutFilterType.all}): _workouts = workouts,_filteredWorkouts = filteredWorkouts;
  

 final  List<WorkoutEntity> _workouts;
 List<WorkoutEntity> get workouts {
  if (_workouts is EqualUnmodifiableListView) return _workouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workouts);
}

@JsonKey() final  WorkoutStats? stats;
 final  List<WorkoutEntity> _filteredWorkouts;
@JsonKey() List<WorkoutEntity> get filteredWorkouts {
  if (_filteredWorkouts is EqualUnmodifiableListView) return _filteredWorkouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredWorkouts);
}

@JsonKey() final  WorkoutFilterType selectedFilter;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._workouts, _workouts)&&(identical(other.stats, stats) || other.stats == stats)&&const DeepCollectionEquality().equals(other._filteredWorkouts, _filteredWorkouts)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workouts),stats,const DeepCollectionEquality().hash(_filteredWorkouts),selectedFilter);

@override
String toString() {
  return 'WorkoutState.loaded(workouts: $workouts, stats: $stats, filteredWorkouts: $filteredWorkouts, selectedFilter: $selectedFilter)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<WorkoutEntity> workouts, WorkoutStats? stats, List<WorkoutEntity> filteredWorkouts, WorkoutFilterType selectedFilter
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workouts = null,Object? stats = freezed,Object? filteredWorkouts = null,Object? selectedFilter = null,}) {
  return _then(Loaded(
null == workouts ? _self._workouts : workouts // ignore: cast_nullable_to_non_nullable
as List<WorkoutEntity>,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as WorkoutStats?,filteredWorkouts: null == filteredWorkouts ? _self._filteredWorkouts : filteredWorkouts // ignore: cast_nullable_to_non_nullable
as List<WorkoutEntity>,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as WorkoutFilterType,
  ));
}


}

/// @nodoc


class Created implements WorkoutState {
  const Created(this.workout);
  

 final  WorkoutEntity workout;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedCopyWith<Created> get copyWith => _$CreatedCopyWithImpl<Created>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Created&&(identical(other.workout, workout) || other.workout == workout));
}


@override
int get hashCode => Object.hash(runtimeType,workout);

@override
String toString() {
  return 'WorkoutState.created(workout: $workout)';
}


}

/// @nodoc
abstract mixin class $CreatedCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory $CreatedCopyWith(Created value, $Res Function(Created) _then) = _$CreatedCopyWithImpl;
@useResult
$Res call({
 WorkoutEntity workout
});


$WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class _$CreatedCopyWithImpl<$Res>
    implements $CreatedCopyWith<$Res> {
  _$CreatedCopyWithImpl(this._self, this._then);

  final Created _self;
  final $Res Function(Created) _then;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workout = null,}) {
  return _then(Created(
null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,
  ));
}

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}

/// @nodoc


class Updated implements WorkoutState {
  const Updated(this.workout);
  

 final  WorkoutEntity workout;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatedCopyWith<Updated> get copyWith => _$UpdatedCopyWithImpl<Updated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Updated&&(identical(other.workout, workout) || other.workout == workout));
}


@override
int get hashCode => Object.hash(runtimeType,workout);

@override
String toString() {
  return 'WorkoutState.updated(workout: $workout)';
}


}

/// @nodoc
abstract mixin class $UpdatedCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory $UpdatedCopyWith(Updated value, $Res Function(Updated) _then) = _$UpdatedCopyWithImpl;
@useResult
$Res call({
 WorkoutEntity workout
});


$WorkoutEntityCopyWith<$Res> get workout;

}
/// @nodoc
class _$UpdatedCopyWithImpl<$Res>
    implements $UpdatedCopyWith<$Res> {
  _$UpdatedCopyWithImpl(this._self, this._then);

  final Updated _self;
  final $Res Function(Updated) _then;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workout = null,}) {
  return _then(Updated(
null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as WorkoutEntity,
  ));
}

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkoutEntityCopyWith<$Res> get workout {
  
  return $WorkoutEntityCopyWith<$Res>(_self.workout, (value) {
    return _then(_self.copyWith(workout: value));
  });
}
}

/// @nodoc


class Deleted implements WorkoutState {
  const Deleted(this.params);
  

 final  DeleteWorkoutParams params;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletedCopyWith<Deleted> get copyWith => _$DeletedCopyWithImpl<Deleted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Deleted&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'WorkoutState.deleted(params: $params)';
}


}

/// @nodoc
abstract mixin class $DeletedCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory $DeletedCopyWith(Deleted value, $Res Function(Deleted) _then) = _$DeletedCopyWithImpl;
@useResult
$Res call({
 DeleteWorkoutParams params
});


$DeleteWorkoutParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$DeletedCopyWithImpl<$Res>
    implements $DeletedCopyWith<$Res> {
  _$DeletedCopyWithImpl(this._self, this._then);

  final Deleted _self;
  final $Res Function(Deleted) _then;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(Deleted(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as DeleteWorkoutParams,
  ));
}

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeleteWorkoutParamsCopyWith<$Res> get params {
  
  return $DeleteWorkoutParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class Failure implements WorkoutState {
  const Failure(this.message);
  

 final  String message;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'WorkoutState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TimeFormatted implements WorkoutState {
  const TimeFormatted(this.formattedTime);
  

 final  String formattedTime;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeFormattedCopyWith<TimeFormatted> get copyWith => _$TimeFormattedCopyWithImpl<TimeFormatted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeFormatted&&(identical(other.formattedTime, formattedTime) || other.formattedTime == formattedTime));
}


@override
int get hashCode => Object.hash(runtimeType,formattedTime);

@override
String toString() {
  return 'WorkoutState.timeFormatted(formattedTime: $formattedTime)';
}


}

/// @nodoc
abstract mixin class $TimeFormattedCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory $TimeFormattedCopyWith(TimeFormatted value, $Res Function(TimeFormatted) _then) = _$TimeFormattedCopyWithImpl;
@useResult
$Res call({
 String formattedTime
});




}
/// @nodoc
class _$TimeFormattedCopyWithImpl<$Res>
    implements $TimeFormattedCopyWith<$Res> {
  _$TimeFormattedCopyWithImpl(this._self, this._then);

  final TimeFormatted _self;
  final $Res Function(TimeFormatted) _then;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? formattedTime = null,}) {
  return _then(TimeFormatted(
null == formattedTime ? _self.formattedTime : formattedTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class WorkoutValidated implements WorkoutState {
  const WorkoutValidated(this.isValid);
  

 final  bool isValid;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutValidatedCopyWith<WorkoutValidated> get copyWith => _$WorkoutValidatedCopyWithImpl<WorkoutValidated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutValidated&&(identical(other.isValid, isValid) || other.isValid == isValid));
}


@override
int get hashCode => Object.hash(runtimeType,isValid);

@override
String toString() {
  return 'WorkoutState.workoutValidated(isValid: $isValid)';
}


}

/// @nodoc
abstract mixin class $WorkoutValidatedCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory $WorkoutValidatedCopyWith(WorkoutValidated value, $Res Function(WorkoutValidated) _then) = _$WorkoutValidatedCopyWithImpl;
@useResult
$Res call({
 bool isValid
});




}
/// @nodoc
class _$WorkoutValidatedCopyWithImpl<$Res>
    implements $WorkoutValidatedCopyWith<$Res> {
  _$WorkoutValidatedCopyWithImpl(this._self, this._then);

  final WorkoutValidated _self;
  final $Res Function(WorkoutValidated) _then;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isValid = null,}) {
  return _then(WorkoutValidated(
null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
