// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 String get uid; String get email; String get name; int get totalWorkouts; int get totalReps; int get currentStreak; Map<String, String>? get workoutNames; String? get password; String? get avatarUrl; String? get backgroundUrl; List<String>? get trainingDays; String? get trainingPlan; String? get pendingEmail;@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime? get emailVerificationSentAt;@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime? get createdAt;@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime? get updatedAt;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.totalReps, totalReps) || other.totalReps == totalReps)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&const DeepCollectionEquality().equals(other.workoutNames, workoutNames)&&(identical(other.password, password) || other.password == password)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.backgroundUrl, backgroundUrl) || other.backgroundUrl == backgroundUrl)&&const DeepCollectionEquality().equals(other.trainingDays, trainingDays)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan)&&(identical(other.pendingEmail, pendingEmail) || other.pendingEmail == pendingEmail)&&(identical(other.emailVerificationSentAt, emailVerificationSentAt) || other.emailVerificationSentAt == emailVerificationSentAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,name,totalWorkouts,totalReps,currentStreak,const DeepCollectionEquality().hash(workoutNames),password,avatarUrl,backgroundUrl,const DeepCollectionEquality().hash(trainingDays),trainingPlan,pendingEmail,emailVerificationSentAt,createdAt,updatedAt);

@override
String toString() {
  return 'UserModel(uid: $uid, email: $email, name: $name, totalWorkouts: $totalWorkouts, totalReps: $totalReps, currentStreak: $currentStreak, workoutNames: $workoutNames, password: $password, avatarUrl: $avatarUrl, backgroundUrl: $backgroundUrl, trainingDays: $trainingDays, trainingPlan: $trainingPlan, pendingEmail: $pendingEmail, emailVerificationSentAt: $emailVerificationSentAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String uid, String email, String name, int totalWorkouts, int totalReps, int currentStreak, Map<String, String>? workoutNames, String? password, String? avatarUrl, String? backgroundUrl, List<String>? trainingDays, String? trainingPlan, String? pendingEmail,@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime? emailVerificationSentAt,@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime? createdAt,@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime? updatedAt
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? email = null,Object? name = null,Object? totalWorkouts = null,Object? totalReps = null,Object? currentStreak = null,Object? workoutNames = freezed,Object? password = freezed,Object? avatarUrl = freezed,Object? backgroundUrl = freezed,Object? trainingDays = freezed,Object? trainingPlan = freezed,Object? pendingEmail = freezed,Object? emailVerificationSentAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,totalWorkouts: null == totalWorkouts ? _self.totalWorkouts : totalWorkouts // ignore: cast_nullable_to_non_nullable
as int,totalReps: null == totalReps ? _self.totalReps : totalReps // ignore: cast_nullable_to_non_nullable
as int,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,workoutNames: freezed == workoutNames ? _self.workoutNames : workoutNames // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,backgroundUrl: freezed == backgroundUrl ? _self.backgroundUrl : backgroundUrl // ignore: cast_nullable_to_non_nullable
as String?,trainingDays: freezed == trainingDays ? _self.trainingDays : trainingDays // ignore: cast_nullable_to_non_nullable
as List<String>?,trainingPlan: freezed == trainingPlan ? _self.trainingPlan : trainingPlan // ignore: cast_nullable_to_non_nullable
as String?,pendingEmail: freezed == pendingEmail ? _self.pendingEmail : pendingEmail // ignore: cast_nullable_to_non_nullable
as String?,emailVerificationSentAt: freezed == emailVerificationSentAt ? _self.emailVerificationSentAt : emailVerificationSentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String email,  String name,  int totalWorkouts,  int totalReps,  int currentStreak,  Map<String, String>? workoutNames,  String? password,  String? avatarUrl,  String? backgroundUrl,  List<String>? trainingDays,  String? trainingPlan,  String? pendingEmail, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime? emailVerificationSentAt, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime? createdAt, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.uid,_that.email,_that.name,_that.totalWorkouts,_that.totalReps,_that.currentStreak,_that.workoutNames,_that.password,_that.avatarUrl,_that.backgroundUrl,_that.trainingDays,_that.trainingPlan,_that.pendingEmail,_that.emailVerificationSentAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String email,  String name,  int totalWorkouts,  int totalReps,  int currentStreak,  Map<String, String>? workoutNames,  String? password,  String? avatarUrl,  String? backgroundUrl,  List<String>? trainingDays,  String? trainingPlan,  String? pendingEmail, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime? emailVerificationSentAt, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime? createdAt, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.uid,_that.email,_that.name,_that.totalWorkouts,_that.totalReps,_that.currentStreak,_that.workoutNames,_that.password,_that.avatarUrl,_that.backgroundUrl,_that.trainingDays,_that.trainingPlan,_that.pendingEmail,_that.emailVerificationSentAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String email,  String name,  int totalWorkouts,  int totalReps,  int currentStreak,  Map<String, String>? workoutNames,  String? password,  String? avatarUrl,  String? backgroundUrl,  List<String>? trainingDays,  String? trainingPlan,  String? pendingEmail, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime? emailVerificationSentAt, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime? createdAt, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.uid,_that.email,_that.name,_that.totalWorkouts,_that.totalReps,_that.currentStreak,_that.workoutNames,_that.password,_that.avatarUrl,_that.backgroundUrl,_that.trainingDays,_that.trainingPlan,_that.pendingEmail,_that.emailVerificationSentAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel extends UserModel {
  const _UserModel({required this.uid, required this.email, required this.name, this.totalWorkouts = 0, this.totalReps = 0, this.currentStreak = 0, final  Map<String, String>? workoutNames = null, this.password, this.avatarUrl = null, this.backgroundUrl = null, final  List<String>? trainingDays = null, this.trainingPlan = null, this.pendingEmail = null, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) this.emailVerificationSentAt, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) this.createdAt, @JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) this.updatedAt}): _workoutNames = workoutNames,_trainingDays = trainingDays,super._();
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String uid;
@override final  String email;
@override final  String name;
@override@JsonKey() final  int totalWorkouts;
@override@JsonKey() final  int totalReps;
@override@JsonKey() final  int currentStreak;
 final  Map<String, String>? _workoutNames;
@override@JsonKey() Map<String, String>? get workoutNames {
  final value = _workoutNames;
  if (value == null) return null;
  if (_workoutNames is EqualUnmodifiableMapView) return _workoutNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? password;
@override@JsonKey() final  String? avatarUrl;
@override@JsonKey() final  String? backgroundUrl;
 final  List<String>? _trainingDays;
@override@JsonKey() List<String>? get trainingDays {
  final value = _trainingDays;
  if (value == null) return null;
  if (_trainingDays is EqualUnmodifiableListView) return _trainingDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? trainingPlan;
@override@JsonKey() final  String? pendingEmail;
@override@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) final  DateTime? emailVerificationSentAt;
@override@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) final  DateTime? createdAt;
@override@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) final  DateTime? updatedAt;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.totalWorkouts, totalWorkouts) || other.totalWorkouts == totalWorkouts)&&(identical(other.totalReps, totalReps) || other.totalReps == totalReps)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&const DeepCollectionEquality().equals(other._workoutNames, _workoutNames)&&(identical(other.password, password) || other.password == password)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.backgroundUrl, backgroundUrl) || other.backgroundUrl == backgroundUrl)&&const DeepCollectionEquality().equals(other._trainingDays, _trainingDays)&&(identical(other.trainingPlan, trainingPlan) || other.trainingPlan == trainingPlan)&&(identical(other.pendingEmail, pendingEmail) || other.pendingEmail == pendingEmail)&&(identical(other.emailVerificationSentAt, emailVerificationSentAt) || other.emailVerificationSentAt == emailVerificationSentAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,name,totalWorkouts,totalReps,currentStreak,const DeepCollectionEquality().hash(_workoutNames),password,avatarUrl,backgroundUrl,const DeepCollectionEquality().hash(_trainingDays),trainingPlan,pendingEmail,emailVerificationSentAt,createdAt,updatedAt);

@override
String toString() {
  return 'UserModel(uid: $uid, email: $email, name: $name, totalWorkouts: $totalWorkouts, totalReps: $totalReps, currentStreak: $currentStreak, workoutNames: $workoutNames, password: $password, avatarUrl: $avatarUrl, backgroundUrl: $backgroundUrl, trainingDays: $trainingDays, trainingPlan: $trainingPlan, pendingEmail: $pendingEmail, emailVerificationSentAt: $emailVerificationSentAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String uid, String email, String name, int totalWorkouts, int totalReps, int currentStreak, Map<String, String>? workoutNames, String? password, String? avatarUrl, String? backgroundUrl, List<String>? trainingDays, String? trainingPlan, String? pendingEmail,@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime? emailVerificationSentAt,@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime? createdAt,@JsonKey(fromJson: _fromTimestamp, toJson: _toTimestamp) DateTime? updatedAt
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? email = null,Object? name = null,Object? totalWorkouts = null,Object? totalReps = null,Object? currentStreak = null,Object? workoutNames = freezed,Object? password = freezed,Object? avatarUrl = freezed,Object? backgroundUrl = freezed,Object? trainingDays = freezed,Object? trainingPlan = freezed,Object? pendingEmail = freezed,Object? emailVerificationSentAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserModel(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,totalWorkouts: null == totalWorkouts ? _self.totalWorkouts : totalWorkouts // ignore: cast_nullable_to_non_nullable
as int,totalReps: null == totalReps ? _self.totalReps : totalReps // ignore: cast_nullable_to_non_nullable
as int,currentStreak: null == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int,workoutNames: freezed == workoutNames ? _self._workoutNames : workoutNames // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,backgroundUrl: freezed == backgroundUrl ? _self.backgroundUrl : backgroundUrl // ignore: cast_nullable_to_non_nullable
as String?,trainingDays: freezed == trainingDays ? _self._trainingDays : trainingDays // ignore: cast_nullable_to_non_nullable
as List<String>?,trainingPlan: freezed == trainingPlan ? _self.trainingPlan : trainingPlan // ignore: cast_nullable_to_non_nullable
as String?,pendingEmail: freezed == pendingEmail ? _self.pendingEmail : pendingEmail // ignore: cast_nullable_to_non_nullable
as String?,emailVerificationSentAt: freezed == emailVerificationSentAt ? _self.emailVerificationSentAt : emailVerificationSentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
