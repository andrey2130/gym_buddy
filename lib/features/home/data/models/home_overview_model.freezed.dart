// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeOverviewModel {

 bool get isTrainingDay; String? get trainingPlan; String? get currentWorkoutTitle; int? get cycleDay; int? get totalCycleDays; int get completedWorkouts; int get totalWorkouts; int get averageWorkoutHours; Set<int> get completedDayIndices; List<String> get weekDays; String? get personalizedTip; List<PlanDayItemModel> get planItems; String? get nextTrainingWorkout; String? get nextTrainingDay; int? get daysUntilNextTraining;
/// Create a copy of HomeOverviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeOverviewModelCopyWith<HomeOverviewModel> get copyWith => _$HomeOverviewModelCopyWithImpl<HomeOverviewModel>(this as HomeOverviewModel, _$identity);

  /// Serializes this HomeOverviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeOverviewModel&&(identical(other.isTrainingDay, isTrainingDay) || other.isTrainingDay == isTrainingDay)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan)&&(identical(other.currentWorkoutTitle, currentWorkoutTitle) || other.currentWorkoutTitle == currentWorkoutTitle)&&(identical(other.cycleDay, cycleDay) || other.cycleDay == cycleDay)&&(identical(other.totalCycleDays, totalCycleDays) || other.totalCycleDays == totalCycleDays)&&(identical(other.completedWorkouts, completedWorkouts) || other.completedWorkouts == completedWorkouts)&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.averageWorkoutHours, averageWorkoutHours) || other.averageWorkoutHours == averageWorkoutHours)&&const DeepCollectionEquality().equals(other.completedDayIndices, completedDayIndices)&&const DeepCollectionEquality().equals(other.weekDays, weekDays)&&(identical(other.personalizedTip, personalizedTip) || other.personalizedTip == personalizedTip)&&const DeepCollectionEquality().equals(other.planItems, planItems)&&(identical(other.nextTrainingWorkout, nextTrainingWorkout) || other.nextTrainingWorkout == nextTrainingWorkout)&&(identical(other.nextTrainingDay, nextTrainingDay) || other.nextTrainingDay == nextTrainingDay)&&(identical(other.daysUntilNextTraining, daysUntilNextTraining) || other.daysUntilNextTraining == daysUntilNextTraining));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isTrainingDay,trainingPlan,currentWorkoutTitle,cycleDay,totalCycleDays,completedWorkouts,totalWorkouts,averageWorkoutHours,const DeepCollectionEquality().hash(completedDayIndices),const DeepCollectionEquality().hash(weekDays),personalizedTip,const DeepCollectionEquality().hash(planItems),nextTrainingWorkout,nextTrainingDay,daysUntilNextTraining);

@override
String toString() {
  return 'HomeOverviewModel(isTrainingDay: $isTrainingDay, trainingPlan: $trainingPlan, currentWorkoutTitle: $currentWorkoutTitle, cycleDay: $cycleDay, totalCycleDays: $totalCycleDays, completedWorkouts: $completedWorkouts, totalWorkouts: $totalWorkouts, averageWorkoutHours: $averageWorkoutHours, completedDayIndices: $completedDayIndices, weekDays: $weekDays, personalizedTip: $personalizedTip, planItems: $planItems, nextTrainingWorkout: $nextTrainingWorkout, nextTrainingDay: $nextTrainingDay, daysUntilNextTraining: $daysUntilNextTraining)';
}


}

/// @nodoc
abstract mixin class $HomeOverviewModelCopyWith<$Res>  {
  factory $HomeOverviewModelCopyWith(HomeOverviewModel value, $Res Function(HomeOverviewModel) _then) = _$HomeOverviewModelCopyWithImpl;
@useResult
$Res call({
 bool isTrainingDay, String? trainingPlan, String? currentWorkoutTitle, int? cycleDay, int? totalCycleDays, int completedWorkouts, int totalWorkouts, int averageWorkoutHours, Set<int> completedDayIndices, List<String> weekDays, String? personalizedTip, List<PlanDayItemModel> planItems, String? nextTrainingWorkout, String? nextTrainingDay, int? daysUntilNextTraining
});




}
/// @nodoc
class _$HomeOverviewModelCopyWithImpl<$Res>
    implements $HomeOverviewModelCopyWith<$Res> {
  _$HomeOverviewModelCopyWithImpl(this._self, this._then);

  final HomeOverviewModel _self;
  final $Res Function(HomeOverviewModel) _then;

/// Create a copy of HomeOverviewModel
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
as List<PlanDayItemModel>,nextTrainingWorkout: freezed == nextTrainingWorkout ? _self.nextTrainingWorkout : nextTrainingWorkout // ignore: cast_nullable_to_non_nullable
as String?,nextTrainingDay: freezed == nextTrainingDay ? _self.nextTrainingDay : nextTrainingDay // ignore: cast_nullable_to_non_nullable
as String?,daysUntilNextTraining: freezed == daysUntilNextTraining ? _self.daysUntilNextTraining : daysUntilNextTraining // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeOverviewModel].
extension HomeOverviewModelPatterns on HomeOverviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeOverviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeOverviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeOverviewModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeOverviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeOverviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeOverviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isTrainingDay,  String? trainingPlan,  String? currentWorkoutTitle,  int? cycleDay,  int? totalCycleDays,  int completedWorkouts,  int totalWorkouts,  int averageWorkoutHours,  Set<int> completedDayIndices,  List<String> weekDays,  String? personalizedTip,  List<PlanDayItemModel> planItems,  String? nextTrainingWorkout,  String? nextTrainingDay,  int? daysUntilNextTraining)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeOverviewModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isTrainingDay,  String? trainingPlan,  String? currentWorkoutTitle,  int? cycleDay,  int? totalCycleDays,  int completedWorkouts,  int totalWorkouts,  int averageWorkoutHours,  Set<int> completedDayIndices,  List<String> weekDays,  String? personalizedTip,  List<PlanDayItemModel> planItems,  String? nextTrainingWorkout,  String? nextTrainingDay,  int? daysUntilNextTraining)  $default,) {final _that = this;
switch (_that) {
case _HomeOverviewModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isTrainingDay,  String? trainingPlan,  String? currentWorkoutTitle,  int? cycleDay,  int? totalCycleDays,  int completedWorkouts,  int totalWorkouts,  int averageWorkoutHours,  Set<int> completedDayIndices,  List<String> weekDays,  String? personalizedTip,  List<PlanDayItemModel> planItems,  String? nextTrainingWorkout,  String? nextTrainingDay,  int? daysUntilNextTraining)?  $default,) {final _that = this;
switch (_that) {
case _HomeOverviewModel() when $default != null:
return $default(_that.isTrainingDay,_that.trainingPlan,_that.currentWorkoutTitle,_that.cycleDay,_that.totalCycleDays,_that.completedWorkouts,_that.totalWorkouts,_that.averageWorkoutHours,_that.completedDayIndices,_that.weekDays,_that.personalizedTip,_that.planItems,_that.nextTrainingWorkout,_that.nextTrainingDay,_that.daysUntilNextTraining);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeOverviewModel implements HomeOverviewModel {
  const _HomeOverviewModel({required this.isTrainingDay, this.trainingPlan, this.currentWorkoutTitle, this.cycleDay, this.totalCycleDays, this.completedWorkouts = 0, this.totalWorkouts = 0, this.averageWorkoutHours = 0, final  Set<int> completedDayIndices = const <int>{}, final  List<String> weekDays = const <String>['M', 'T', 'W', 'T', 'F', 'S', 'S'], this.personalizedTip, final  List<PlanDayItemModel> planItems = const [], this.nextTrainingWorkout, this.nextTrainingDay, this.daysUntilNextTraining}): _completedDayIndices = completedDayIndices,_weekDays = weekDays,_planItems = planItems;
  factory _HomeOverviewModel.fromJson(Map<String, dynamic> json) => _$HomeOverviewModelFromJson(json);

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
 final  List<PlanDayItemModel> _planItems;
@override@JsonKey() List<PlanDayItemModel> get planItems {
  if (_planItems is EqualUnmodifiableListView) return _planItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_planItems);
}

@override final  String? nextTrainingWorkout;
@override final  String? nextTrainingDay;
@override final  int? daysUntilNextTraining;

/// Create a copy of HomeOverviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeOverviewModelCopyWith<_HomeOverviewModel> get copyWith => __$HomeOverviewModelCopyWithImpl<_HomeOverviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeOverviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeOverviewModel&&(identical(other.isTrainingDay, isTrainingDay) || other.isTrainingDay == isTrainingDay)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan)&&(identical(other.currentWorkoutTitle, currentWorkoutTitle) || other.currentWorkoutTitle == currentWorkoutTitle)&&(identical(other.cycleDay, cycleDay) || other.cycleDay == cycleDay)&&(identical(other.totalCycleDays, totalCycleDays) || other.totalCycleDays == totalCycleDays)&&(identical(other.completedWorkouts, completedWorkouts) || other.completedWorkouts == completedWorkouts)&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.averageWorkoutHours, averageWorkoutHours) || other.averageWorkoutHours == averageWorkoutHours)&&const DeepCollectionEquality().equals(other._completedDayIndices, _completedDayIndices)&&const DeepCollectionEquality().equals(other._weekDays, _weekDays)&&(identical(other.personalizedTip, personalizedTip) || other.personalizedTip == personalizedTip)&&const DeepCollectionEquality().equals(other._planItems, _planItems)&&(identical(other.nextTrainingWorkout, nextTrainingWorkout) || other.nextTrainingWorkout == nextTrainingWorkout)&&(identical(other.nextTrainingDay, nextTrainingDay) || other.nextTrainingDay == nextTrainingDay)&&(identical(other.daysUntilNextTraining, daysUntilNextTraining) || other.daysUntilNextTraining == daysUntilNextTraining));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isTrainingDay,trainingPlan,currentWorkoutTitle,cycleDay,totalCycleDays,completedWorkouts,totalWorkouts,averageWorkoutHours,const DeepCollectionEquality().hash(_completedDayIndices),const DeepCollectionEquality().hash(_weekDays),personalizedTip,const DeepCollectionEquality().hash(_planItems),nextTrainingWorkout,nextTrainingDay,daysUntilNextTraining);

@override
String toString() {
  return 'HomeOverviewModel(isTrainingDay: $isTrainingDay, trainingPlan: $trainingPlan, currentWorkoutTitle: $currentWorkoutTitle, cycleDay: $cycleDay, totalCycleDays: $totalCycleDays, completedWorkouts: $completedWorkouts, totalWorkouts: $totalWorkouts, averageWorkoutHours: $averageWorkoutHours, completedDayIndices: $completedDayIndices, weekDays: $weekDays, personalizedTip: $personalizedTip, planItems: $planItems, nextTrainingWorkout: $nextTrainingWorkout, nextTrainingDay: $nextTrainingDay, daysUntilNextTraining: $daysUntilNextTraining)';
}


}

/// @nodoc
abstract mixin class _$HomeOverviewModelCopyWith<$Res> implements $HomeOverviewModelCopyWith<$Res> {
  factory _$HomeOverviewModelCopyWith(_HomeOverviewModel value, $Res Function(_HomeOverviewModel) _then) = __$HomeOverviewModelCopyWithImpl;
@override @useResult
$Res call({
 bool isTrainingDay, String? trainingPlan, String? currentWorkoutTitle, int? cycleDay, int? totalCycleDays, int completedWorkouts, int totalWorkouts, int averageWorkoutHours, Set<int> completedDayIndices, List<String> weekDays, String? personalizedTip, List<PlanDayItemModel> planItems, String? nextTrainingWorkout, String? nextTrainingDay, int? daysUntilNextTraining
});




}
/// @nodoc
class __$HomeOverviewModelCopyWithImpl<$Res>
    implements _$HomeOverviewModelCopyWith<$Res> {
  __$HomeOverviewModelCopyWithImpl(this._self, this._then);

  final _HomeOverviewModel _self;
  final $Res Function(_HomeOverviewModel) _then;

/// Create a copy of HomeOverviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isTrainingDay = null,Object? trainingPlan = freezed,Object? currentWorkoutTitle = freezed,Object? cycleDay = freezed,Object? totalCycleDays = freezed,Object? completedWorkouts = null,Object? totalWorkouts = null,Object? averageWorkoutHours = null,Object? completedDayIndices = null,Object? weekDays = null,Object? personalizedTip = freezed,Object? planItems = null,Object? nextTrainingWorkout = freezed,Object? nextTrainingDay = freezed,Object? daysUntilNextTraining = freezed,}) {
  return _then(_HomeOverviewModel(
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
as List<PlanDayItemModel>,nextTrainingWorkout: freezed == nextTrainingWorkout ? _self.nextTrainingWorkout : nextTrainingWorkout // ignore: cast_nullable_to_non_nullable
as String?,nextTrainingDay: freezed == nextTrainingDay ? _self.nextTrainingDay : nextTrainingDay // ignore: cast_nullable_to_non_nullable
as String?,daysUntilNextTraining: freezed == daysUntilNextTraining ? _self.daysUntilNextTraining : daysUntilNextTraining // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PlanDayItemModel {

 String get workout; String get days; bool get isActive;
/// Create a copy of PlanDayItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanDayItemModelCopyWith<PlanDayItemModel> get copyWith => _$PlanDayItemModelCopyWithImpl<PlanDayItemModel>(this as PlanDayItemModel, _$identity);

  /// Serializes this PlanDayItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanDayItemModel&&(identical(other.workout, workout) || other.workout == workout)&&(identical(other.days, days) || other.days == days)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout,days,isActive);

@override
String toString() {
  return 'PlanDayItemModel(workout: $workout, days: $days, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $PlanDayItemModelCopyWith<$Res>  {
  factory $PlanDayItemModelCopyWith(PlanDayItemModel value, $Res Function(PlanDayItemModel) _then) = _$PlanDayItemModelCopyWithImpl;
@useResult
$Res call({
 String workout, String days, bool isActive
});




}
/// @nodoc
class _$PlanDayItemModelCopyWithImpl<$Res>
    implements $PlanDayItemModelCopyWith<$Res> {
  _$PlanDayItemModelCopyWithImpl(this._self, this._then);

  final PlanDayItemModel _self;
  final $Res Function(PlanDayItemModel) _then;

/// Create a copy of PlanDayItemModel
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


/// Adds pattern-matching-related methods to [PlanDayItemModel].
extension PlanDayItemModelPatterns on PlanDayItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlanDayItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlanDayItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlanDayItemModel value)  $default,){
final _that = this;
switch (_that) {
case _PlanDayItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlanDayItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlanDayItemModel() when $default != null:
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
case _PlanDayItemModel() when $default != null:
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
case _PlanDayItemModel():
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
case _PlanDayItemModel() when $default != null:
return $default(_that.workout,_that.days,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlanDayItemModel implements PlanDayItemModel {
  const _PlanDayItemModel({required this.workout, required this.days, this.isActive = false});
  factory _PlanDayItemModel.fromJson(Map<String, dynamic> json) => _$PlanDayItemModelFromJson(json);

@override final  String workout;
@override final  String days;
@override@JsonKey() final  bool isActive;

/// Create a copy of PlanDayItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlanDayItemModelCopyWith<_PlanDayItemModel> get copyWith => __$PlanDayItemModelCopyWithImpl<_PlanDayItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlanDayItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlanDayItemModel&&(identical(other.workout, workout) || other.workout == workout)&&(identical(other.days, days) || other.days == days)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,workout,days,isActive);

@override
String toString() {
  return 'PlanDayItemModel(workout: $workout, days: $days, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$PlanDayItemModelCopyWith<$Res> implements $PlanDayItemModelCopyWith<$Res> {
  factory _$PlanDayItemModelCopyWith(_PlanDayItemModel value, $Res Function(_PlanDayItemModel) _then) = __$PlanDayItemModelCopyWithImpl;
@override @useResult
$Res call({
 String workout, String days, bool isActive
});




}
/// @nodoc
class __$PlanDayItemModelCopyWithImpl<$Res>
    implements _$PlanDayItemModelCopyWith<$Res> {
  __$PlanDayItemModelCopyWithImpl(this._self, this._then);

  final _PlanDayItemModel _self;
  final $Res Function(_PlanDayItemModel) _then;

/// Create a copy of PlanDayItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workout = null,Object? days = null,Object? isActive = null,}) {
  return _then(_PlanDayItemModel(
workout: null == workout ? _self.workout : workout // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
