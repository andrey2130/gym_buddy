// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RegisterViaEmail value)?  registerViaEmail,TResult Function( Logout value)?  logout,TResult Function( CheckAuthStatus value)?  checkAuthStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RegisterViaEmail() when registerViaEmail != null:
return registerViaEmail(_that);case Logout() when logout != null:
return logout(_that);case CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RegisterViaEmail value)  registerViaEmail,required TResult Function( Logout value)  logout,required TResult Function( CheckAuthStatus value)  checkAuthStatus,}){
final _that = this;
switch (_that) {
case RegisterViaEmail():
return registerViaEmail(_that);case Logout():
return logout(_that);case CheckAuthStatus():
return checkAuthStatus(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RegisterViaEmail value)?  registerViaEmail,TResult? Function( Logout value)?  logout,TResult? Function( CheckAuthStatus value)?  checkAuthStatus,}){
final _that = this;
switch (_that) {
case RegisterViaEmail() when registerViaEmail != null:
return registerViaEmail(_that);case Logout() when logout != null:
return logout(_that);case CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RegisterParams params)?  registerViaEmail,TResult Function()?  logout,TResult Function()?  checkAuthStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RegisterViaEmail() when registerViaEmail != null:
return registerViaEmail(_that.params);case Logout() when logout != null:
return logout();case CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RegisterParams params)  registerViaEmail,required TResult Function()  logout,required TResult Function()  checkAuthStatus,}) {final _that = this;
switch (_that) {
case RegisterViaEmail():
return registerViaEmail(_that.params);case Logout():
return logout();case CheckAuthStatus():
return checkAuthStatus();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RegisterParams params)?  registerViaEmail,TResult? Function()?  logout,TResult? Function()?  checkAuthStatus,}) {final _that = this;
switch (_that) {
case RegisterViaEmail() when registerViaEmail != null:
return registerViaEmail(_that.params);case Logout() when logout != null:
return logout();case CheckAuthStatus() when checkAuthStatus != null:
return checkAuthStatus();case _:
  return null;

}
}

}

/// @nodoc


class RegisterViaEmail implements AuthEvent {
  const RegisterViaEmail(this.params);
  

 final  RegisterParams params;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterViaEmailCopyWith<RegisterViaEmail> get copyWith => _$RegisterViaEmailCopyWithImpl<RegisterViaEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterViaEmail&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'AuthEvent.registerViaEmail(params: $params)';
}


}

/// @nodoc
abstract mixin class $RegisterViaEmailCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegisterViaEmailCopyWith(RegisterViaEmail value, $Res Function(RegisterViaEmail) _then) = _$RegisterViaEmailCopyWithImpl;
@useResult
$Res call({
 RegisterParams params
});


$RegisterParamsCopyWith<$Res> get params;

}
/// @nodoc
class _$RegisterViaEmailCopyWithImpl<$Res>
    implements $RegisterViaEmailCopyWith<$Res> {
  _$RegisterViaEmailCopyWithImpl(this._self, this._then);

  final RegisterViaEmail _self;
  final $Res Function(RegisterViaEmail) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(RegisterViaEmail(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as RegisterParams,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterParamsCopyWith<$Res> get params {
  
  return $RegisterParamsCopyWith<$Res>(_self.params, (value) {
    return _then(_self.copyWith(params: value));
  });
}
}

/// @nodoc


class Logout implements AuthEvent {
  const Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc


class CheckAuthStatus implements AuthEvent {
  const CheckAuthStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckAuthStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkAuthStatus()';
}


}




/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( Authenticated value)?  authenticated,TResult Function( Unauthenticated value)?  unauthenticated,TResult Function( Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Authenticated() when authenticated != null:
return authenticated(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( Authenticated value)  authenticated,required TResult Function( Unauthenticated value)  unauthenticated,required TResult Function( Failure value)  failure,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Loading():
return loading(_that);case Authenticated():
return authenticated(_that);case Unauthenticated():
return unauthenticated(_that);case Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( Authenticated value)?  authenticated,TResult? Function( Unauthenticated value)?  unauthenticated,TResult? Function( Failure value)?  failure,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case Authenticated() when authenticated != null:
return authenticated(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String userId)?  authenticated,TResult Function()?  unauthenticated,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Authenticated() when authenticated != null:
return authenticated(_that.userId);case Unauthenticated() when unauthenticated != null:
return unauthenticated();case Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String userId)  authenticated,required TResult Function()  unauthenticated,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Loading():
return loading();case Authenticated():
return authenticated(_that.userId);case Unauthenticated():
return unauthenticated();case Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String userId)?  authenticated,TResult? Function()?  unauthenticated,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case Authenticated() when authenticated != null:
return authenticated(_that.userId);case Unauthenticated() when unauthenticated != null:
return unauthenticated();case Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements AuthState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class Loading implements AuthState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class Authenticated implements AuthState {
  const Authenticated({required this.userId});
  

 final  String userId;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticatedCopyWith<Authenticated> get copyWith => _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Authenticated&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'AuthState.authenticated(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $AuthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthenticatedCopyWith(Authenticated value, $Res Function(Authenticated) _then) = _$AuthenticatedCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(this._self, this._then);

  final Authenticated _self;
  final $Res Function(Authenticated) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(Authenticated(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Unauthenticated implements AuthState {
  const Unauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.unauthenticated()';
}


}




/// @nodoc


class Failure implements AuthState {
  const Failure({required this.message});
  

 final  String message;

/// Create a copy of AuthState
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
  return 'AuthState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
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

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
