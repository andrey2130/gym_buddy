// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_overview_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeOverviewEntity {

 bool get isTrainingDay; String? get trainingPlan; String? get currentWorkoutTitle; int? get cycleDay; int? get totalCycleDays; int get completedWorkouts; int get totalWorkouts; int get averageWorkoutHours; Set<int> get completedDayIndices; List<String> get weekDays; String? get personalizedTip; List<PlanDayItemEntity> get planItems; String? get nextTrainingWorkout; String? get nextTrainingDay; int? get daysUntilNextTraining;
/// Create a copy of HomeOverviewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeOverviewEntityCopyWith<HomeOverviewEntity> get copyWith => _$HomeOverviewEntityCopyWithImpl<HomeOverviewEntity>(this as HomeOverviewEntity, _$identity);

  /// Serializes this HomeOverviewEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeOverviewEntity&&(identical(other.isTrainingDay, isTrainingDay) || other.isTrainingDay == isTrainingDay)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan)&&(identical(other.currentWorkoutTitle, currentWorkoutTitle) || other.currentWorkoutTitle == currentWorkoutTitle)&&(identical(other.cycleDay, cycleDay) || other.cycleDay == cycleDay)&&(identical(other.totalCycleDays, totalCycleDays) || other.totalCycleDays == totalCycleDays)&&(identical(other.completedWorkouts, completedWorkouts) || other.completedWorkouts == completedWorkouts)&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.averageWorkoutHours, averageWorkoutHours) || other.averageWorkoutHours == averageWorkoutHours)&&const DeepCollectionEquality().equals(other.completedDayIndices, completedDayIndices)&&const DeepCollectionEquality().equals(other.weekDays, weekDays)&&(identical(other.personalizedTip, personalizedTip) || other.personalizedTip == personalizedTip)&&const DeepCollectionEquality().equals(other.planItems, planItems)&&(identical(other.nextTrainingWorkout, nextTrainingWorkout) || other.nextTrainingWorkout == nextTrainingWorkout)&&(identical(other.nextTrainingDay, nextTrainingDay) || other.nextTrainingDay == nextTrainingDay)&&(identical(other.daysUntilNextTraining, daysUntilNextTraining) || other.daysUntilNextTraining == daysUntilNextTraining));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isTrainingDay,trainingPlan,currentWorkoutTitle,cycleDay,totalCycleDays,completedWorkouts,totalWorkouts,averageWorkoutHours,const DeepCollectionEquality().hash(completedDayIndices),const DeepCollectionEquality().hash(weekDays),personalizedTip,const DeepCollectionEquality().hash(planItems),nextTrainingWorkout,nextTrainingDay,daysUntilNextTraining);

@override
String toString() {
  return 'HomeOverviewEntity(isTrainingDay: $isTrainingDay, trainingPlan: $trainingPlan, currentWorkoutTitle: $currentWorkoutTitle, cycleDay: $cycleDay, totalCycleDays: $totalCycleDays, completedWorkouts: $completedWorkouts, totalWorkouts: $totalWorkouts, averageWorkoutHours: $averageWorkoutHours, completedDayIndices: $completedDayIndices, weekDays: $weekDays, personalizedTip: $personalizedTip, planItems: $planItems, nextTrainingWorkout: $nextTrainingWorkout, nextTrainingDay: $nextTrainingDay, daysUntilNextTraining: $daysUntilNextTraining)';
}


}

/// @nodoc
abstract mixin class $HomeOverviewEntityCopyWith<$Res>  {
  factory $HomeOverviewEntityCopyWith(HomeOverviewEntity value, $Res Function(HomeOverviewEntity) _then) = _$HomeOverviewEntityCopyWithImpl;
@useResult
$Res call({
 bool isTrainingDay, String? trainingPlan, String? currentWorkoutTitle, int? cycleDay, int? totalCycleDays, int completedWorkouts, int totalWorkouts, int averageWorkoutHours, Set<int> completedDayIndices, List<String> weekDays, String? personalizedTip, List<PlanDayItemEntity> planItems, String? nextTrainingWorkout, String? nextTrainingDay, int? daysUntilNextTraining
});




}
/// @nodoc
class _$HomeOverviewEntityCopyWithImpl<$Res>
    implements $HomeOverviewEntityCopyWith<$Res> {
  _$HomeOverviewEntityCopyWithImpl(this._self, this._then);

  final HomeOverviewEntity _self;
  final $Res Function(HomeOverviewEntity) _then;

/// Create a copy of HomeOverviewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isTrainingDay = null,Object? trainingPlan = freezed,Object? currentWorkoutTitle = freezed,Object? cycleDay = freezed,Object? totalCycleDays = freezed,Object? completedWorkouts = null,Object? totalWorkouts = null,Object? averageWorkoutHours = null,Object? completedDayIndices = null,Object? weekDays = null,Object? personalizedTip = freezed,Object? planItems = null,Object? nextTrainingWorkout = freezed,Object? nextTrainingDay = freezed,Object? daysUntilNextTraining = freezed,}) {
  return _then(_self.copyWith(
isTrainingDay: null == isTrainingDay ? _self.isTrainingDay : isTrainingDay // ignore: cast_nullable_to_non_nullable
as bool,trainingPlan: freezed == trainingPlan ? _self.trainingPlan : trainingPlan // ignore: cast_nullable_to_non_nullable
as String?,currentWorkoutTitle: freezed == currentWorkoutTitle ? _self.currentWorkoutTitle : currentWorkoutTitle // ignore: cast_nullable_to_non_nullable
as String?,cycleDay: freezed == cycleDay ? _self.cycleDay : cycleDay // ignore: cast_nullable_to_non_nullable
as int?,totalCycleDays: freezed == totalCycleDays ? _self.totalCycleDays : totalCycleDays // ignore: cast_nullable_to_non_nullable
as int?,completedWorkouts: null == completedWorkouts ? _self.completedWorkouts : completedWorkouts // ignore: cast_nullable_to_non_nullable
as int,totalWorkouts: null == totalWorkouts ? _self.totalWorkouts : totalWorkouts // ignore: cast_nullable_to_non_nullable
as int,averageWorkoutHours: null == averageWorkoutHours ? _self.averageWorkoutHours : averageWorkoutHours // ignore: cast_nullable_to_non_nullable
as int,completedDayIndices: null == completedDayIndices ? _self.completedDayIndices : completedDayIndices // ignore: cast_nullable_to_non_nullable
as Set<int>,weekDays: null == weekDays ? _self.weekDays : weekDays // ignore: cast_nullable_to_non_nullable
as List<String>,personalizedTip: freezed == personalizedTip ? _self.personalizedTip : personalizedTip // ignore: cast_nullable_to_non_nullable
as String?,planItems: null == planItems ? _self.planItems : planItems // ignore: cast_nullable_to_non_nullable
as List<PlanDayItemEntity>,nextTrainingWorkout: freezed == nextTrainingWorkout ? _self.nextTrainingWorkout : nextTrainingWorkout // ignore: cast_nullable_to_non_nullable
as String?,nextTrainingDay: freezed == nextTrainingDay ? _self.nextTrainingDay : nextTrainingDay // ignore: cast_nullable_to_non_nullable
as String?,daysUntilNextTraining: freezed == daysUntilNextTraining ? _self.daysUntilNextTraining : daysUntilNextTraining // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeOverviewEntity].
extension HomeOverviewEntityPatterns on HomeOverviewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeOverviewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeOverviewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeOverviewEntity value)  $default,){
final _that = this;
switch (_that) {
case _HomeOverviewEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeOverviewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HomeOverviewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isTrainingDay,  String? trainingPlan,  String? currentWorkoutTitle,  int? cycleDay,  int? totalCycleDays,  int completedWorkouts,  int totalWorkouts,  int averageWorkoutHours,  Set<int> completedDayIndices,  List<String> weekDays,  String? personalizedTip,  List<PlanDayItemEntity> planItems,  String? nextTrainingWorkout,  String? nextTrainingDay,  int? daysUntilNextTraining)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeOverviewEntity() when $default != null:
return $default(_that.isTrainingDay,_that.trainingPlan,_that.currentWorkoutTitle,_that.cycleDay,_that.totalCycleDays,_that.completedWorkouts,_that.totalWorkouts,_that.averageWorkoutHours,_that.completedDayIndices,_that.weekDays,_that.personalizedTip,_that.planItems,_that.nextTrainingWorkout,_that.nextTrainingDay,_that.daysUntilNextTraining);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isTrainingDay,  String? trainingPlan,  String? currentWorkoutTitle,  int? cycleDay,  int? totalCycleDays,  int completedWorkouts,  int totalWorkouts,  int averageWorkoutHours,  Set<int> completedDayIndices,  List<String> weekDays,  String? personalizedTip,  List<PlanDayItemEntity> planItems,  String? nextTrainingWorkout,  String? nextTrainingDay,  int? daysUntilNextTraining)  $default,) {final _that = this;
switch (_that) {
case _HomeOverviewEntity():
return $default(_that.isTrainingDay,_that.trainingPlan,_that.currentWorkoutTitle,_that.cycleDay,_that.totalCycleDays,_that.completedWorkouts,_that.totalWorkouts,_that.averageWorkoutHours,_that.completedDayIndices,_that.weekDays,_that.personalizedTip,_that.planItems,_that.nextTrainingWorkout,_that.nextTrainingDay,_that.daysUntilNextTraining);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isTrainingDay,  String? trainingPlan,  String? currentWorkoutTitle,  int? cycleDay,  int? totalCycleDays,  int completedWorkouts,  int totalWorkouts,  int averageWorkoutHours,  Set<int> completedDayIndices,  List<String> weekDays,  String? personalizedTip,  List<PlanDayItemEntity> planItems,  String? nextTrainingWorkout,  String? nextTrainingDay,  int? daysUntilNextTraining)?  $default,) {final _that = this;
switch (_that) {
case _HomeOverviewEntity() when $default != null:
return $default(_that.isTrainingDay,_that.trainingPlan,_that.currentWorkoutTitle,_that.cycleDay,_that.totalCycleDays,_that.completedWorkouts,_that.totalWorkouts,_that.averageWorkoutHours,_that.completedDayIndices,_that.weekDays,_that.personalizedTip,_that.planItems,_that.nextTrainingWorkout,_that.nextTrainingDay,_that.daysUntilNextTraining);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeOverviewEntity implements HomeOverviewEntity {
  const _HomeOverviewEntity({required this.isTrainingDay, this.trainingPlan, this.currentWorkoutTitle, this.cycleDay, this.totalCycleDays, this.completedWorkouts = 0, this.totalWorkouts = 0, this.averageWorkoutHours = 0, final  Set<int> completedDayIndices = const <int>{}, final  List<String> weekDays = const <String>['M', 'T', 'W', 'T', 'F', 'S', 'S'], this.personalizedTip, final  List<PlanDayItemEntity> planItems = const [], this.nextTrainingWorkout, this.nextTrainingDay, this.daysUntilNextTraining}): _completedDayIndices = completedDayIndices,_weekDays = weekDays,_planItems = planItems;
  factory _HomeOverviewEntity.fromJson(Map<String, dynamic> json) => _$HomeOverviewEntityFromJson(json);

@override final  bool isTrainingDay;
@override final  String? trainingPlan;
@override final  String? currentWorkoutTitle;
@override final  int? cycleDay;
@override final  int? totalCycleDays;
@override@JsonKey() final  int completedWorkouts;
@override@JsonKey() final  int totalWorkouts;
@override@JsonKey() final  int averageWorkoutHours;
 final  Set<int> _completedDayIndices;
@override@JsonKey() Set<int> get completedDayIndices {
  if (_completedDayIndices is EqualUnmodifiableSetView) return _completedDayIndices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_completedDayIndices);
}

 final  List<String> _weekDays;
@override@JsonKey() List<String> get weekDays {
  if (_weekDays is EqualUnmodifiableListView) return _weekDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weekDays);
}

@override final  String? personalizedTip;
 final  List<PlanDayItemEntity> _planItems;
@override@JsonKey() List<PlanDayItemEntity> get planItems {
  if (_planItems is EqualUnmodifiableListView) return _planItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_planItems);
}

@override final  String? nextTrainingWorkout;
@override final  String? nextTrainingDay;
@override final  int? daysUntilNextTraining;

/// Create a copy of HomeOverviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeOverviewEntityCopyWith<_HomeOverviewEntity> get copyWith => __$HomeOverviewEntityCopyWithImpl<_HomeOverviewEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeOverviewEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeOverviewEntity&&(identical(other.isTrainingDay, isTrainingDay) || other.isTrainingDay == isTrainingDay)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan)&&(identical(other.currentWorkoutTitle, currentWorkoutTitle) || other.currentWorkoutTitle == currentWorkoutTitle)&&(identical(other.cycleDay, cycleDay) || other.cycleDay == cycleDay)&&(identical(other.totalCycleDays, totalCycleDays) || other.totalCycleDays == totalCycleDays)&&(identical(other.completedWorkouts, completedWorkouts) || other.completedWorkouts == completedWorkouts)&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.averageWorkoutHours, averageWorkoutHours) || other.averageWorkoutHours == averageWorkoutHours)&&const DeepCollectionEquality().equals(other._completedDayIndices, _completedDayIndices)&&const DeepCollectionEquality().equals(other._weekDays, _weekDays)&&(identical(other.personalizedTip, personalizedTip) || other.personalizedTip == personalizedTip)&&const DeepCollectionEquality().equals(other._planItems, _planItems)&&(identical(other.nextTrainingWorkout, nextTrainingWorkout) || other.nextTrainingWorkout == nextTrainingWorkout)&&(identical(other.nextTrainingDay, nextTrainingDay) || other.nextTrainingDay == nextTrainingDay)&&(identical(other.daysUntilNextTraining, daysUntilNextTraining) || other.daysUntilNextTraining == daysUntilNextTraining));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isTrainingDay,trainingPlan,currentWorkoutTitle,cycleDay,totalCycleDays,completedWorkouts,totalWorkouts,averageWorkoutHours,const DeepCollectionEquality().hash(_completedDayIndices),const DeepCollectionEquality().hash(_weekDays),personalizedTip,const DeepCollectionEquality().hash(_planItems),nextTrainingWorkout,nextTrainingDay,daysUntilNextTraining);

@override
String toString() {
  return 'HomeOverviewEntity(isTrainingDay: $isTrainingDay, trainingPlan: $trainingPlan, currentWorkoutTitle: $currentWorkoutTitle, cycleDay: $cycleDay, totalCycleDays: $totalCycleDays, completedWorkouts: $completedWorkouts, totalWorkouts: $totalWorkouts, averageWorkoutHours: $averageWorkoutHours, completedDayIndices: $completedDayIndices, weekDays: $weekDays, personalizedTip: $personalizedTip, planItems: $planItems, nextTrainingWorkout: $nextTrainingWorkout, nextTrainingDay: $nextTrainingDay, daysUntilNextTraining: $daysUntilNextTraining)';
}


}

/// @nodoc
abstract mixin class _$HomeOverviewEntityCopyWith<$Res> implements $HomeOverviewEntityCopyWith<$Res> {
  factory _$HomeOverviewEntityCopyWith(_HomeOverviewEntity value, $Res Function(_HomeOverviewEntity) _then) = __$HomeOverviewEntityCopyWithImpl;
@override @useResult
$Res call({
 bool isTrainingDay, String? trainingPlan, String? currentWorkoutTitle, int? cycleDay, int? totalCycleDays, int completedWorkouts, int totalWorkouts, int averageWorkoutHours, Set<int> completedDayIndices, List<String> weekDays, String? personalizedTip, List<PlanDayItemEntity> planItems, String? nextTrainingWorkout, String? nextTrainingDay, int? daysUntilNextTraining
});




}
/// @nodoc
class __$HomeOverviewEntityCopyWithImpl<$Res>
    implements _$HomeOverviewEntityCopyWith<$Res> {
  __$HomeOverviewEntityCopyWithImpl(this._self, this._then);

  final _HomeOverviewEntity _self;
  final $Res Function(_HomeOverviewEntity) _then;

/// Create a copy of HomeOverviewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isTrainingDay = null,Object? trainingPlan = freezed,Object? currentWorkoutTitle = freezed,Object? cycleDay = freezed,Object? totalCycleDays = freezed,Object? completedWorkouts = null,Object? totalWorkouts = null,Object? averageWorkoutHours = null,Object? completedDayIndices = null,Object? weekDays = null,Object? personalizedTip = freezed,Object? planItems = null,Object? nextTrainingWorkout = freezed,Object? nextTrainingDay = freezed,Object? daysUntilNextTraining = freezed,}) {
  return _then(_HomeOverviewEntity(
isTrainingDay: null == isTrainingDay ? _self.isTrainingDay : isTrainingDay // ignore: cast_nullable_to_non_nullable
as bool,trainingPlan: freezed == trainingPlan ? _self.trainingPlan : trainingPlan // ignore: cast_nullable_to_non_nullable
as String?,currentWorkoutTitle: freezed == currentWorkoutTitle ? _self.currentWorkoutTitle : currentWorkoutTitle // ignore: cast_nullable_to_non_nullable
as String?,cycleDay: freezed == cycleDay ? _self.cycleDay : cycleDay // ignore: cast_nullable_to_non_nullable
as int?,totalCycleDays: freezed == totalCycleDays ? _self.totalCycleDays : totalCycleDays // ignore: cast_nullable_to_non_nullable
as int?,completedWorkouts: null == completedWorkouts ? _self.completedWorkouts : completedWorkouts // ignore: cast_nullable_to_non_nullable
as int,totalWorkouts: null == totalWorkouts ? _self.totalWorkouts : totalWorkouts // ignore: cast_nullable_to_non_nullable
as int,averageWorkoutHours: null == averageWorkoutHours ? _self.averageWorkoutHours : averageWorkoutHours // ignore: cast_nullable_to_non_nullable
as int,completedDayIndices: null == completedDayIndices ? _self._completedDayIndices : completedDayIndices // ignore: cast_nullable_to_non_nullable
as Set<int>,weekDays: null == weekDays ? _self._weekDays : weekDays // ignore: cast_nullable_to_non_nullable
as List<String>,personalizedTip: freezed == personalizedTip ? _self.personalizedTip : personalizedTip // ignore: cast_nullable_to_non_nullable
as String?,planItems: null == planItems ? _self._planItems : planItems // ignore: cast_nullable_to_non_nullable
as List<PlanDayItemEntity>,nextTrainingWorkout: freezed == nextTrainingWorkout ? _self.nextTrainingWorkout : nextTrainingWorkout // ignore: cast_nullable_to_non_nullable
as String?,nextTrainingDay: freezed == nextTrainingDay ? _self.nextTrainingDay : nextTrainingDay // ignore: cast_nullable_to_non_nullable
as String?,daysUntilNextTraining: freezed == daysUntilNextTraining ? _self.daysUntilNextTraining : daysUntilNextTraining // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PlanDayItemEntity {

 String get workout; String get days; bool get isActive;
/// Create a copy of PlanDayItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanDayItemEntityCopyWith<PlanDayItemEntity> get copyWith => _$PlanDayItemEntityCopyWithImpl<PlanDayItemEntity>(this as PlanDayItemEntity, _$identity);

  /// Serializes this PlanDayItemEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanDayItemEntity&&(identical(other.workout, workout) || other.workout == workout)&&(identical(other.days, days) || other.days == days)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout,days,isActive);

@override
String toString() {
  return 'PlanDayItemEntity(workout: $workout, days: $days, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $PlanDayItemEntityCopyWith<$Res>  {
  factory $PlanDayItemEntityCopyWith(PlanDayItemEntity value, $Res Function(PlanDayItemEntity) _then) = _$PlanDayItemEntityCopyWithImpl;
@useResult
$Res call({
 String workout, String days, bool isActive
});




}
/// @nodoc
class _$PlanDayItemEntityCopyWithImpl<$Res>
    implements $PlanDayItemEntityCopyWith<$Res> {
  _$PlanDayItemEntityCopyWithImpl(this._self, this._then);

  final PlanDayItemEntity _self;
  final $Res Function(PlanDayItemEntity) _then;

/// Create a copy of PlanDayItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workout = null,Object? days = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PlanDayItemEntity].
extension PlanDayItemEntityPatterns on PlanDayItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanDayItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanDayItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanDayItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _PlanDayItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanDayItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PlanDayItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String workout,  String days,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlanDayItemEntity() when $default != null:
return $default(_that.workout,_that.days,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String workout,  String days,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _PlanDayItemEntity():
return $default(_that.workout,_that.days,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String workout,  String days,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _PlanDayItemEntity() when $default != null:
return $default(_that.workout,_that.days,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlanDayItemEntity implements PlanDayItemEntity {
  const _PlanDayItemEntity({required this.workout, required this.days, this.isActive = false});
  factory _PlanDayItemEntity.fromJson(Map<String, dynamic> json) => _$PlanDayItemEntityFromJson(json);

@override final  String workout;
@override final  String days;
@override@JsonKey() final  bool isActive;

/// Create a copy of PlanDayItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanDayItemEntityCopyWith<_PlanDayItemEntity> get copyWith => __$PlanDayItemEntityCopyWithImpl<_PlanDayItemEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanDayItemEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanDayItemEntity&&(identical(other.workout, workout) || other.workout == workout)&&(identical(other.days, days) || other.days == days)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout,days,isActive);

@override
String toString() {
  return 'PlanDayItemEntity(workout: $workout, days: $days, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$PlanDayItemEntityCopyWith<$Res> implements $PlanDayItemEntityCopyWith<$Res> {
  factory _$PlanDayItemEntityCopyWith(_PlanDayItemEntity value, $Res Function(_PlanDayItemEntity) _then) = __$PlanDayItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String workout, String days, bool isActive
});




}
/// @nodoc
class __$PlanDayItemEntityCopyWithImpl<$Res>
    implements _$PlanDayItemEntityCopyWith<$Res> {
  __$PlanDayItemEntityCopyWithImpl(this._self, this._then);

  final _PlanDayItemEntity _self;
  final $Res Function(_PlanDayItemEntity) _then;

/// Create a copy of PlanDayItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workout = null,Object? days = null,Object? isActive = null,}) {
  return _then(_PlanDayItemEntity(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
