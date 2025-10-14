// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingEvent()';
}


}

/// @nodoc
class $OnboardingEventCopyWith<$Res>  {
$OnboardingEventCopyWith(OnboardingEvent _, $Res Function(OnboardingEvent) __);
}


/// Adds pattern-matching-related methods to [OnboardingEvent].
extension OnboardingEventPatterns on OnboardingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SaveOnboarding value)?  saveOnboarding,TResult Function( GetOnboarding value)?  getOnboarding,TResult Function( SelectDays value)?  selectDays,TResult Function( SelectPlan value)?  selectPlan,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SaveOnboarding() when saveOnboarding != null:
return saveOnboarding(_that);case GetOnboarding() when getOnboarding != null:
return getOnboarding(_that);case SelectDays() when selectDays != null:
return selectDays(_that);case SelectPlan() when selectPlan != null:
return selectPlan(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SaveOnboarding value)  saveOnboarding,required TResult Function( GetOnboarding value)  getOnboarding,required TResult Function( SelectDays value)  selectDays,required TResult Function( SelectPlan value)  selectPlan,}){
final _that = this;
switch (_that) {
case SaveOnboarding():
return saveOnboarding(_that);case GetOnboarding():
return getOnboarding(_that);case SelectDays():
return selectDays(_that);case SelectPlan():
return selectPlan(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SaveOnboarding value)?  saveOnboarding,TResult? Function( GetOnboarding value)?  getOnboarding,TResult? Function( SelectDays value)?  selectDays,TResult? Function( SelectPlan value)?  selectPlan,}){
final _that = this;
switch (_that) {
case SaveOnboarding() when saveOnboarding != null:
return saveOnboarding(_that);case GetOnboarding() when getOnboarding != null:
return getOnboarding(_that);case SelectDays() when selectDays != null:
return selectDays(_that);case SelectPlan() when selectPlan != null:
return selectPlan(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( OnboardingParams params)?  saveOnboarding,TResult Function( String userId)?  getOnboarding,TResult Function( Set<String> days)?  selectDays,TResult Function( String plan)?  selectPlan,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SaveOnboarding() when saveOnboarding != null:
return saveOnboarding(_that.params);case GetOnboarding() when getOnboarding != null:
return getOnboarding(_that.userId);case SelectDays() when selectDays != null:
return selectDays(_that.days);case SelectPlan() when selectPlan != null:
return selectPlan(_that.plan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( OnboardingParams params)  saveOnboarding,required TResult Function( String userId)  getOnboarding,required TResult Function( Set<String> days)  selectDays,required TResult Function( String plan)  selectPlan,}) {final _that = this;
switch (_that) {
case SaveOnboarding():
return saveOnboarding(_that.params);case GetOnboarding():
return getOnboarding(_that.userId);case SelectDays():
return selectDays(_that.days);case SelectPlan():
return selectPlan(_that.plan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( OnboardingParams params)?  saveOnboarding,TResult? Function( String userId)?  getOnboarding,TResult? Function( Set<String> days)?  selectDays,TResult? Function( String plan)?  selectPlan,}) {final _that = this;
switch (_that) {
case SaveOnboarding() when saveOnboarding != null:
return saveOnboarding(_that.params);case GetOnboarding() when getOnboarding != null:
return getOnboarding(_that.userId);case SelectDays() when selectDays != null:
return selectDays(_that.days);case SelectPlan() when selectPlan != null:
return selectPlan(_that.plan);case _:
  return null;

}
}

}

/// @nodoc


class SaveOnboarding implements OnboardingEvent {
  const SaveOnboarding(this.params);
  

 final  OnboardingParams params;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveOnboardingCopyWith<SaveOnboarding> get copyWith => _$SaveOnboardingCopyWithImpl<SaveOnboarding>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveOnboarding&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'OnboardingEvent.saveOnboarding(params: $params)';
}


}

/// @nodoc
abstract mixin class $SaveOnboardingCopyWith<$Res> implements $OnboardingEventCopyWith<$Res> {
  factory $SaveOnboardingCopyWith(SaveOnboarding value, $Res Function(SaveOnboarding) _then) = _$SaveOnboardingCopyWithImpl;
@useResult
$Res call({
 OnboardingParams params
});


$OnboardingParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$SaveOnboardingCopyWithImpl<$Res>
    implements $SaveOnboardingCopyWith<$Res> {
  _$SaveOnboardingCopyWithImpl(this._self, this._then);

  final SaveOnboarding _self;
  final $Res Function(SaveOnboarding) _then;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(SaveOnboarding(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as OnboardingParams,
  ));
}

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnboardingParamsCopyWith<$Res> get params {
  
  return $OnboardingParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class GetOnboarding implements OnboardingEvent {
  const GetOnboarding(this.userId);
  

 final  String userId;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOnboardingCopyWith<GetOnboarding> get copyWith => _$GetOnboardingCopyWithImpl<GetOnboarding>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOnboarding&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'OnboardingEvent.getOnboarding(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetOnboardingCopyWith<$Res> implements $OnboardingEventCopyWith<$Res> {
  factory $GetOnboardingCopyWith(GetOnboarding value, $Res Function(GetOnboarding) _then) = _$GetOnboardingCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetOnboardingCopyWithImpl<$Res>
    implements $GetOnboardingCopyWith<$Res> {
  _$GetOnboardingCopyWithImpl(this._self, this._then);

  final GetOnboarding _self;
  final $Res Function(GetOnboarding) _then;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(GetOnboarding(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SelectDays implements OnboardingEvent {
  const SelectDays(final  Set<String> days): _days = days;
  

 final  Set<String> _days;
 Set<String> get days {
  if (_days is EqualUnmodifiableSetView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_days);
}


/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectDaysCopyWith<SelectDays> get copyWith => _$SelectDaysCopyWithImpl<SelectDays>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectDays&&const DeepCollectionEquality().equals(other._days, _days));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_days));

@override
String toString() {
  return 'OnboardingEvent.selectDays(days: $days)';
}


}

/// @nodoc
abstract mixin class $SelectDaysCopyWith<$Res> implements $OnboardingEventCopyWith<$Res> {
  factory $SelectDaysCopyWith(SelectDays value, $Res Function(SelectDays) _then) = _$SelectDaysCopyWithImpl;
@useResult
$Res call({
 Set<String> days
});




}
/// @nodoc
class _$SelectDaysCopyWithImpl<$Res>
    implements $SelectDaysCopyWith<$Res> {
  _$SelectDaysCopyWithImpl(this._self, this._then);

  final SelectDays _self;
  final $Res Function(SelectDays) _then;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? days = null,}) {
  return _then(SelectDays(
null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class SelectPlan implements OnboardingEvent {
  const SelectPlan(this.plan);
  

 final  String plan;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectPlanCopyWith<SelectPlan> get copyWith => _$SelectPlanCopyWithImpl<SelectPlan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectPlan&&(identical(other.plan, plan) || other.plan == plan));
}


@override
int get hashCode => Object.hash(runtimeType,plan);

@override
String toString() {
  return 'OnboardingEvent.selectPlan(plan: $plan)';
}


}

/// @nodoc
abstract mixin class $SelectPlanCopyWith<$Res> implements $OnboardingEventCopyWith<$Res> {
  factory $SelectPlanCopyWith(SelectPlan value, $Res Function(SelectPlan) _then) = _$SelectPlanCopyWithImpl;
@useResult
$Res call({
 String plan
});




}
/// @nodoc
class _$SelectPlanCopyWithImpl<$Res>
    implements $SelectPlanCopyWith<$Res> {
  _$SelectPlanCopyWithImpl(this._self, this._then);

  final SelectPlan _self;
  final $Res Function(SelectPlan) _then;

/// Create a copy of OnboardingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? plan = null,}) {
  return _then(SelectPlan(
null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$OnboardingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState()';
}


}

/// @nodoc
class $OnboardingStateCopyWith<$Res>  {
$OnboardingStateCopyWith(OnboardingState _, $Res Function(OnboardingState) __);
}


/// Adds pattern-matching-related methods to [OnboardingState].
extension OnboardingStatePatterns on OnboardingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Success value)?  success,TResult Function( Loaded value)?  loaded,TResult Function( Failure value)?  failure,TResult Function( DaysSelected value)?  daysSelected,TResult Function( PlanSelected value)?  planSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Loaded() when loaded != null:
return loaded(_that);case Failure() when failure != null:
return failure(_that);case DaysSelected() when daysSelected != null:
return daysSelected(_that);case PlanSelected() when planSelected != null:
return planSelected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Success value)  success,required TResult Function( Loaded value)  loaded,required TResult Function( Failure value)  failure,required TResult Function( DaysSelected value)  daysSelected,required TResult Function( PlanSelected value)  planSelected,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Success():
return success(_that);case Loaded():
return loaded(_that);case Failure():
return failure(_that);case DaysSelected():
return daysSelected(_that);case PlanSelected():
return planSelected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Success value)?  success,TResult? Function( Loaded value)?  loaded,TResult? Function( Failure value)?  failure,TResult? Function( DaysSelected value)?  daysSelected,TResult? Function( PlanSelected value)?  planSelected,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Success() when success != null:
return success(_that);case Loaded() when loaded != null:
return loaded(_that);case Failure() when failure != null:
return failure(_that);case DaysSelected() when daysSelected != null:
return daysSelected(_that);case PlanSelected() when planSelected != null:
return planSelected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( OnboardingParams params)?  loaded,TResult Function( String message)?  failure,TResult Function( Set<String> days)?  daysSelected,TResult Function( Set<String> days,  String plan)?  planSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success();case Loaded() when loaded != null:
return loaded(_that.params);case Failure() when failure != null:
return failure(_that.message);case DaysSelected() when daysSelected != null:
return daysSelected(_that.days);case PlanSelected() when planSelected != null:
return planSelected(_that.days,_that.plan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( OnboardingParams params)  loaded,required TResult Function( String message)  failure,required TResult Function( Set<String> days)  daysSelected,required TResult Function( Set<String> days,  String plan)  planSelected,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Success():
return success();case Loaded():
return loaded(_that.params);case Failure():
return failure(_that.message);case DaysSelected():
return daysSelected(_that.days);case PlanSelected():
return planSelected(_that.days,_that.plan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( OnboardingParams params)?  loaded,TResult? Function( String message)?  failure,TResult? Function( Set<String> days)?  daysSelected,TResult? Function( Set<String> days,  String plan)?  planSelected,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Success() when success != null:
return success();case Loaded() when loaded != null:
return loaded(_that.params);case Failure() when failure != null:
return failure(_that.message);case DaysSelected() when daysSelected != null:
return daysSelected(_that.days);case PlanSelected() when planSelected != null:
return planSelected(_that.days,_that.plan);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements OnboardingState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.initial()';
}


}




/// @nodoc


class Loading implements OnboardingState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.loading()';
}


}




/// @nodoc


class Success implements OnboardingState {
  const Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingState.success()';
}


}




/// @nodoc


class Loaded implements OnboardingState {
  const Loaded(this.params);
  

 final  OnboardingParams params;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'OnboardingState.loaded(params: $params)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $OnboardingStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 OnboardingParams params
});


$OnboardingParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(Loaded(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as OnboardingParams,
  ));
}

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OnboardingParamsCopyWith<$Res> get params {
  
  return $OnboardingParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class Failure implements OnboardingState {
  const Failure(this.message);
  

 final  String message;

/// Create a copy of OnboardingState
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
  return 'OnboardingState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $OnboardingStateCopyWith<$Res> {
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

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DaysSelected implements OnboardingState {
  const DaysSelected(final  Set<String> days): _days = days;
  

 final  Set<String> _days;
 Set<String> get days {
  if (_days is EqualUnmodifiableSetView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_days);
}


/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DaysSelectedCopyWith<DaysSelected> get copyWith => _$DaysSelectedCopyWithImpl<DaysSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DaysSelected&&const DeepCollectionEquality().equals(other._days, _days));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_days));

@override
String toString() {
  return 'OnboardingState.daysSelected(days: $days)';
}


}

/// @nodoc
abstract mixin class $DaysSelectedCopyWith<$Res> implements $OnboardingStateCopyWith<$Res> {
  factory $DaysSelectedCopyWith(DaysSelected value, $Res Function(DaysSelected) _then) = _$DaysSelectedCopyWithImpl;
@useResult
$Res call({
 Set<String> days
});




}
/// @nodoc
class _$DaysSelectedCopyWithImpl<$Res>
    implements $DaysSelectedCopyWith<$Res> {
  _$DaysSelectedCopyWithImpl(this._self, this._then);

  final DaysSelected _self;
  final $Res Function(DaysSelected) _then;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? days = null,}) {
  return _then(DaysSelected(
null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class PlanSelected implements OnboardingState {
  const PlanSelected({required final  Set<String> days, required this.plan}): _days = days;
  

 final  Set<String> _days;
 Set<String> get days {
  if (_days is EqualUnmodifiableSetView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_days);
}

 final  String plan;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlanSelectedCopyWith<PlanSelected> get copyWith => _$PlanSelectedCopyWithImpl<PlanSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlanSelected&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.plan, plan) || other.plan == plan));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_days),plan);

@override
String toString() {
  return 'OnboardingState.planSelected(days: $days, plan: $plan)';
}


}

/// @nodoc
abstract mixin class $PlanSelectedCopyWith<$Res> implements $OnboardingStateCopyWith<$Res> {
  factory $PlanSelectedCopyWith(PlanSelected value, $Res Function(PlanSelected) _then) = _$PlanSelectedCopyWithImpl;
@useResult
$Res call({
 Set<String> days, String plan
});




}
/// @nodoc
class _$PlanSelectedCopyWithImpl<$Res>
    implements $PlanSelectedCopyWith<$Res> {
  _$PlanSelectedCopyWithImpl(this._self, this._then);

  final PlanSelected _self;
  final $Res Function(PlanSelected) _then;

/// Create a copy of OnboardingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? days = null,Object? plan = null,}) {
  return _then(PlanSelected(
days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as Set<String>,plan: null == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
