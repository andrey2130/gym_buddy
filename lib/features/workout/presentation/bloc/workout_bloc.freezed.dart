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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Started value)?  started,TResult Function( CreateWorkout value)?  createWorkout,TResult Function( LoadWorkouts value)?  loadWorkouts,TResult Function( UpdateWorkout value)?  updateWorkout,TResult Function( UpdateWorkoutExercises value)?  updateWorkoutExercises,TResult Function( DeleteWorkout value)?  deleteWorkout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case CreateWorkout() when createWorkout != null:
return createWorkout(_that);case LoadWorkouts() when loadWorkouts != null:
return loadWorkouts(_that);case UpdateWorkout() when updateWorkout != null:
return updateWorkout(_that);case UpdateWorkoutExercises() when updateWorkoutExercises != null:
return updateWorkoutExercises(_that);case DeleteWorkout() when deleteWorkout != null:
return deleteWorkout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Started value)  started,required TResult Function( CreateWorkout value)  createWorkout,required TResult Function( LoadWorkouts value)  loadWorkouts,required TResult Function( UpdateWorkout value)  updateWorkout,required TResult Function( UpdateWorkoutExercises value)  updateWorkoutExercises,required TResult Function( DeleteWorkout value)  deleteWorkout,}){
final _that = this;
switch (_that) {
case Started():
return started(_that);case CreateWorkout():
return createWorkout(_that);case LoadWorkouts():
return loadWorkouts(_that);case UpdateWorkout():
return updateWorkout(_that);case UpdateWorkoutExercises():
return updateWorkoutExercises(_that);case DeleteWorkout():
return deleteWorkout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Started value)?  started,TResult? Function( CreateWorkout value)?  createWorkout,TResult? Function( LoadWorkouts value)?  loadWorkouts,TResult? Function( UpdateWorkout value)?  updateWorkout,TResult? Function( UpdateWorkoutExercises value)?  updateWorkoutExercises,TResult? Function( DeleteWorkout value)?  deleteWorkout,}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case CreateWorkout() when createWorkout != null:
return createWorkout(_that);case LoadWorkouts() when loadWorkouts != null:
return loadWorkouts(_that);case UpdateWorkout() when updateWorkout != null:
return updateWorkout(_that);case UpdateWorkoutExercises() when updateWorkoutExercises != null:
return updateWorkoutExercises(_that);case DeleteWorkout() when deleteWorkout != null:
return deleteWorkout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( WorkoutEntity workout)?  createWorkout,TResult Function()?  loadWorkouts,TResult Function( WorkoutEntity workout)?  updateWorkout,TResult Function( WorkoutEntity workout)?  updateWorkoutExercises,TResult Function( DeleteWorkoutParams params)?  deleteWorkout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case CreateWorkout() when createWorkout != null:
return createWorkout(_that.workout);case LoadWorkouts() when loadWorkouts != null:
return loadWorkouts();case UpdateWorkout() when updateWorkout != null:
return updateWorkout(_that.workout);case UpdateWorkoutExercises() when updateWorkoutExercises != null:
return updateWorkoutExercises(_that.workout);case DeleteWorkout() when deleteWorkout != null:
return deleteWorkout(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( WorkoutEntity workout)  createWorkout,required TResult Function()  loadWorkouts,required TResult Function( WorkoutEntity workout)  updateWorkout,required TResult Function( WorkoutEntity workout)  updateWorkoutExercises,required TResult Function( DeleteWorkoutParams params)  deleteWorkout,}) {final _that = this;
switch (_that) {
case Started():
return started();case CreateWorkout():
return createWorkout(_that.workout);case LoadWorkouts():
return loadWorkouts();case UpdateWorkout():
return updateWorkout(_that.workout);case UpdateWorkoutExercises():
return updateWorkoutExercises(_that.workout);case DeleteWorkout():
return deleteWorkout(_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( WorkoutEntity workout)?  createWorkout,TResult? Function()?  loadWorkouts,TResult? Function( WorkoutEntity workout)?  updateWorkout,TResult? Function( WorkoutEntity workout)?  updateWorkoutExercises,TResult? Function( DeleteWorkoutParams params)?  deleteWorkout,}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case CreateWorkout() when createWorkout != null:
return createWorkout(_that.workout);case LoadWorkouts() when loadWorkouts != null:
return loadWorkouts();case UpdateWorkout() when updateWorkout != null:
return updateWorkout(_that.workout);case UpdateWorkoutExercises() when updateWorkoutExercises != null:
return updateWorkoutExercises(_that.workout);case DeleteWorkout() when deleteWorkout != null:
return deleteWorkout(_that.params);case _:
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Loaded value)?  loaded,TResult Function( Created value)?  created,TResult Function( Updated value)?  updated,TResult Function( Deleted value)?  deleted,TResult Function( Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case Created() when created != null:
return created(_that);case Updated() when updated != null:
return updated(_that);case Deleted() when deleted != null:
return deleted(_that);case Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Loaded value)  loaded,required TResult Function( Created value)  created,required TResult Function( Updated value)  updated,required TResult Function( Deleted value)  deleted,required TResult Function( Failure value)  failure,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Loaded():
return loaded(_that);case Created():
return created(_that);case Updated():
return updated(_that);case Deleted():
return deleted(_that);case Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Loaded value)?  loaded,TResult? Function( Created value)?  created,TResult? Function( Updated value)?  updated,TResult? Function( Deleted value)?  deleted,TResult? Function( Failure value)?  failure,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case Created() when created != null:
return created(_that);case Updated() when updated != null:
return updated(_that);case Deleted() when deleted != null:
return deleted(_that);case Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<WorkoutEntity> workouts)?  loaded,TResult Function( WorkoutEntity workout)?  created,TResult Function( WorkoutEntity workout)?  updated,TResult Function( DeleteWorkoutParams params)?  deleted,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.workouts);case Created() when created != null:
return created(_that.workout);case Updated() when updated != null:
return updated(_that.workout);case Deleted() when deleted != null:
return deleted(_that.params);case Failure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<WorkoutEntity> workouts)  loaded,required TResult Function( WorkoutEntity workout)  created,required TResult Function( WorkoutEntity workout)  updated,required TResult Function( DeleteWorkoutParams params)  deleted,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Loaded():
return loaded(_that.workouts);case Created():
return created(_that.workout);case Updated():
return updated(_that.workout);case Deleted():
return deleted(_that.params);case Failure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<WorkoutEntity> workouts)?  loaded,TResult? Function( WorkoutEntity workout)?  created,TResult? Function( WorkoutEntity workout)?  updated,TResult? Function( DeleteWorkoutParams params)?  deleted,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.workouts);case Created() when created != null:
return created(_that.workout);case Updated() when updated != null:
return updated(_that.workout);case Deleted() when deleted != null:
return deleted(_that.params);case Failure() when failure != null:
return failure(_that.message);case _:
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
  const Loaded(final  List<WorkoutEntity> workouts): _workouts = workouts;
  

 final  List<WorkoutEntity> _workouts;
 List<WorkoutEntity> get workouts {
  if (_workouts is EqualUnmodifiableListView) return _workouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workouts);
}


/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._workouts, _workouts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workouts));

@override
String toString() {
  return 'WorkoutState.loaded(workouts: $workouts)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<WorkoutEntity> workouts
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
@pragma('vm:prefer-inline') $Res call({Object? workouts = null,}) {
  return _then(Loaded(
null == workouts ? _self._workouts : workouts // ignore: cast_nullable_to_non_nullable
as List<WorkoutEntity>,
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

// dart format on
