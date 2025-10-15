// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserEntity {

 String get uid; String get email; String get name; Map<String, String>? get workoutNames; String? get password; String? get avatarUrl; String? get backgroundUrl; List<String>? get trainingDays; String? get trainingPlan; String? get pendingEmail; DateTime? get emailVerificationSentAt; DateTime? get createdAt; DateTime? get updatedAt; int get totalWorkouts; int get totalReps; int get currentStreak;
/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEntityCopyWith<UserEntity> get copyWith => _$UserEntityCopyWithImpl<UserEntity>(this as UserEntity, _$identity);

  /// Serializes this UserEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEntity&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.workoutNames, workoutNames)&&(identical(other.password, password) || other.password == password)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.backgroundUrl, backgroundUrl) || other.backgroundUrl == backgroundUrl)&&const DeepCollectionEquality().equals(other.trainingDays, trainingDays)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan)&&(identical(other.pendingEmail, pendingEmail) || other.pendingEmail == pendingEmail)&&(identical(other.emailVerificationSentAt, emailVerificationSentAt) || other.emailVerificationSentAt == emailVerificationSentAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.totalReps, totalReps) || other.totalReps == totalReps)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,name,const DeepCollectionEquality().hash(workoutNames),password,avatarUrl,backgroundUrl,const DeepCollectionEquality().hash(trainingDays),trainingPlan,pendingEmail,emailVerificationSentAt,createdAt,updatedAt,totalWorkouts,totalReps,currentStreak);

@override
String toString() {
  return 'UserEntity(uid: $uid, email: $email, name: $name, workoutNames: $workoutNames, password: $password, avatarUrl: $avatarUrl, backgroundUrl: $backgroundUrl, trainingDays: $trainingDays, trainingPlan: $trainingPlan, pendingEmail: $pendingEmail, emailVerificationSentAt: $emailVerificationSentAt, createdAt: $createdAt, updatedAt: $updatedAt, totalWorkouts: $totalWorkouts, totalReps: $totalReps, currentStreak: $currentStreak)';
}


}

/// @nodoc
abstract mixin class $UserEntityCopyWith<$Res>  {
  factory $UserEntityCopyWith(UserEntity value, $Res Function(UserEntity) _then) = _$UserEntityCopyWithImpl;
@useResult
$Res call({
 String uid, String email, String name, Map<String, String>? workoutNames, String? password, String? avatarUrl, String? backgroundUrl, List<String>? trainingDays, String? trainingPlan, String? pendingEmail, DateTime? emailVerificationSentAt, DateTime? createdAt, DateTime? updatedAt, int totalWorkouts, int totalReps, int currentStreak
});




}
/// @nodoc
class _$UserEntityCopyWithImpl<$Res>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._self, this._then);

  final UserEntity _self;
  final $Res Function(UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? email = null,Object? name = null,Object? workoutNames = freezed,Object? password = freezed,Object? avatarUrl = freezed,Object? backgroundUrl = freezed,Object? trainingDays = freezed,Object? trainingPlan = freezed,Object? pendingEmail = freezed,Object? emailVerificationSentAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? totalWorkouts = null,Object? totalReps = null,Object? currentStreak = null,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,workoutNames: freezed == workoutNames ? _self.workoutNames : workoutNames // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,backgroundUrl: freezed == backgroundUrl ? _self.backgroundUrl : backgroundUrl // ignore: cast_nullable_to_non_nullable
as String?,trainingDays: freezed == trainingDays ? _self.trainingDays : trainingDays // ignore: cast_nullable_to_non_nullable
as List<String>?,trainingPlan: freezed == trainingPlan ? _self.trainingPlan : trainingPlan // ignore: cast_nullable_to_non_nullable
as String?,pendingEmail: freezed == pendingEmail ? _self.pendingEmail : pendingEmail // ignore: cast_nullable_to_non_nullable
as String?,emailVerificationSentAt: freezed == emailVerificationSentAt ? _self.emailVerificationSentAt : emailVerificationSentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,totalWorkouts: null == totalWorkouts ? _self.totalWorkouts : totalWorkouts // ignore: cast_nullable_to_non_nullable
as int,totalReps: null == totalReps ? _self.totalReps : totalReps // ignore: cast_nullable_to_non_nullable
as int,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserEntity].
extension UserEntityPatterns on UserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String email,  String name,  Map<String, String>? workoutNames,  String? password,  String? avatarUrl,  String? backgroundUrl,  List<String>? trainingDays,  String? trainingPlan,  String? pendingEmail,  DateTime? emailVerificationSentAt,  DateTime? createdAt,  DateTime? updatedAt,  int totalWorkouts,  int totalReps,  int currentStreak)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.uid,_that.email,_that.name,_that.workoutNames,_that.password,_that.avatarUrl,_that.backgroundUrl,_that.trainingDays,_that.trainingPlan,_that.pendingEmail,_that.emailVerificationSentAt,_that.createdAt,_that.updatedAt,_that.totalWorkouts,_that.totalReps,_that.currentStreak);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String email,  String name,  Map<String, String>? workoutNames,  String? password,  String? avatarUrl,  String? backgroundUrl,  List<String>? trainingDays,  String? trainingPlan,  String? pendingEmail,  DateTime? emailVerificationSentAt,  DateTime? createdAt,  DateTime? updatedAt,  int totalWorkouts,  int totalReps,  int currentStreak)  $default,) {final _that = this;
switch (_that) {
case _UserEntity():
return $default(_that.uid,_that.email,_that.name,_that.workoutNames,_that.password,_that.avatarUrl,_that.backgroundUrl,_that.trainingDays,_that.trainingPlan,_that.pendingEmail,_that.emailVerificationSentAt,_that.createdAt,_that.updatedAt,_that.totalWorkouts,_that.totalReps,_that.currentStreak);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String email,  String name,  Map<String, String>? workoutNames,  String? password,  String? avatarUrl,  String? backgroundUrl,  List<String>? trainingDays,  String? trainingPlan,  String? pendingEmail,  DateTime? emailVerificationSentAt,  DateTime? createdAt,  DateTime? updatedAt,  int totalWorkouts,  int totalReps,  int currentStreak)?  $default,) {final _that = this;
switch (_that) {
case _UserEntity() when $default != null:
return $default(_that.uid,_that.email,_that.name,_that.workoutNames,_that.password,_that.avatarUrl,_that.backgroundUrl,_that.trainingDays,_that.trainingPlan,_that.pendingEmail,_that.emailVerificationSentAt,_that.createdAt,_that.updatedAt,_that.totalWorkouts,_that.totalReps,_that.currentStreak);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserEntity implements UserEntity {
  const _UserEntity({required this.uid, required this.email, required this.name, final  Map<String, String>? workoutNames, this.password, this.avatarUrl, this.backgroundUrl, final  List<String>? trainingDays, this.trainingPlan, this.pendingEmail, this.emailVerificationSentAt, this.createdAt, this.updatedAt, this.totalWorkouts = 0, this.totalReps = 0, this.currentStreak = 0}): _workoutNames = workoutNames,_trainingDays = trainingDays;
  factory _UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);

@override final  String uid;
@override final  String email;
@override final  String name;
 final  Map<String, String>? _workoutNames;
@override Map<String, String>? get workoutNames {
  final value = _workoutNames;
  if (value == null) return null;
  if (_workoutNames is EqualUnmodifiableMapView) return _workoutNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? password;
@override final  String? avatarUrl;
@override final  String? backgroundUrl;
 final  List<String>? _trainingDays;
@override List<String>? get trainingDays {
  final value = _trainingDays;
  if (value == null) return null;
  if (_trainingDays is EqualUnmodifiableListView) return _trainingDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? trainingPlan;
@override final  String? pendingEmail;
@override final  DateTime? emailVerificationSentAt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey() final  int totalWorkouts;
@override@JsonKey() final  int totalReps;
@override@JsonKey() final  int currentStreak;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEntityCopyWith<_UserEntity> get copyWith => __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEntity&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._workoutNames, _workoutNames)&&(identical(other.password, password) || other.password == password)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.backgroundUrl, backgroundUrl) || other.backgroundUrl == backgroundUrl)&&const DeepCollectionEquality().equals(other._trainingDays, _trainingDays)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan)&&(identical(other.pendingEmail, pendingEmail) || other.pendingEmail == pendingEmail)&&(identical(other.emailVerificationSentAt, emailVerificationSentAt) || other.emailVerificationSentAt == emailVerificationSentAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.totalReps, totalReps) || other.totalReps == totalReps)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,name,const DeepCollectionEquality().hash(_workoutNames),password,avatarUrl,backgroundUrl,const DeepCollectionEquality().hash(_trainingDays),trainingPlan,pendingEmail,emailVerificationSentAt,createdAt,updatedAt,totalWorkouts,totalReps,currentStreak);

@override
String toString() {
  return 'UserEntity(uid: $uid, email: $email, name: $name, workoutNames: $workoutNames, password: $password, avatarUrl: $avatarUrl, backgroundUrl: $backgroundUrl, trainingDays: $trainingDays, trainingPlan: $trainingPlan, pendingEmail: $pendingEmail, emailVerificationSentAt: $emailVerificationSentAt, createdAt: $createdAt, updatedAt: $updatedAt, totalWorkouts: $totalWorkouts, totalReps: $totalReps, currentStreak: $currentStreak)';
}


}

/// @nodoc
abstract mixin class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(_UserEntity value, $Res Function(_UserEntity) _then) = __$UserEntityCopyWithImpl;
@override @useResult
$Res call({
 String uid, String email, String name, Map<String, String>? workoutNames, String? password, String? avatarUrl, String? backgroundUrl, List<String>? trainingDays, String? trainingPlan, String? pendingEmail, DateTime? emailVerificationSentAt, DateTime? createdAt, DateTime? updatedAt, int totalWorkouts, int totalReps, int currentStreak
});




}
/// @nodoc
class __$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(this._self, this._then);

  final _UserEntity _self;
  final $Res Function(_UserEntity) _then;

/// Create a copy of UserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? email = null,Object? name = null,Object? workoutNames = freezed,Object? password = freezed,Object? avatarUrl = freezed,Object? backgroundUrl = freezed,Object? trainingDays = freezed,Object? trainingPlan = freezed,Object? pendingEmail = freezed,Object? emailVerificationSentAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? totalWorkouts = null,Object? totalReps = null,Object? currentStreak = null,}) {
  return _then(_UserEntity(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,workoutNames: freezed == workoutNames ? _self._workoutNames : workoutNames // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,backgroundUrl: freezed == backgroundUrl ? _self.backgroundUrl : backgroundUrl // ignore: cast_nullable_to_non_nullable
as String?,trainingDays: freezed == trainingDays ? _self._trainingDays : trainingDays // ignore: cast_nullable_to_non_nullable
as List<String>?,trainingPlan: freezed == trainingPlan ? _self.trainingPlan : trainingPlan // ignore: cast_nullable_to_non_nullable
as String?,pendingEmail: freezed == pendingEmail ? _self.pendingEmail : pendingEmail // ignore: cast_nullable_to_non_nullable
as String?,emailVerificationSentAt: freezed == emailVerificationSentAt ? _self.emailVerificationSentAt : emailVerificationSentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,totalWorkouts: null == totalWorkouts ? _self.totalWorkouts : totalWorkouts // ignore: cast_nullable_to_non_nullable
as int,totalReps: null == totalReps ? _self.totalReps : totalReps // ignore: cast_nullable_to_non_nullable
as int,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
