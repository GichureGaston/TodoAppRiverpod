// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppConfigState {

 String get appName; String get version; String get apiBaseUrl; int get maxTodosPerUser; bool get enableOfflineMode;
/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppConfigStateCopyWith<AppConfigState> get copyWith => _$AppConfigStateCopyWithImpl<AppConfigState>(this as AppConfigState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppConfigState&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.apiBaseUrl, apiBaseUrl) || other.apiBaseUrl == apiBaseUrl)&&(identical(other.maxTodosPerUser, maxTodosPerUser) || other.maxTodosPerUser == maxTodosPerUser)&&(identical(other.enableOfflineMode, enableOfflineMode) || other.enableOfflineMode == enableOfflineMode));
}


@override
int get hashCode => Object.hash(runtimeType,appName,version,apiBaseUrl,maxTodosPerUser,enableOfflineMode);

@override
String toString() {
  return 'AppConfigState(appName: $appName, version: $version, apiBaseUrl: $apiBaseUrl, maxTodosPerUser: $maxTodosPerUser, enableOfflineMode: $enableOfflineMode)';
}


}

/// @nodoc
abstract mixin class $AppConfigStateCopyWith<$Res>  {
  factory $AppConfigStateCopyWith(AppConfigState value, $Res Function(AppConfigState) _then) = _$AppConfigStateCopyWithImpl;
@useResult
$Res call({
 String appName, String version, String apiBaseUrl, int maxTodosPerUser, bool enableOfflineMode
});




}
/// @nodoc
class _$AppConfigStateCopyWithImpl<$Res>
    implements $AppConfigStateCopyWith<$Res> {
  _$AppConfigStateCopyWithImpl(this._self, this._then);

  final AppConfigState _self;
  final $Res Function(AppConfigState) _then;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appName = null,Object? version = null,Object? apiBaseUrl = null,Object? maxTodosPerUser = null,Object? enableOfflineMode = null,}) {
  return _then(_self.copyWith(
appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,apiBaseUrl: null == apiBaseUrl ? _self.apiBaseUrl : apiBaseUrl // ignore: cast_nullable_to_non_nullable
as String,maxTodosPerUser: null == maxTodosPerUser ? _self.maxTodosPerUser : maxTodosPerUser // ignore: cast_nullable_to_non_nullable
as int,enableOfflineMode: null == enableOfflineMode ? _self.enableOfflineMode : enableOfflineMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppConfigState].
extension AppConfigStatePatterns on AppConfigState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppConfigState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppConfigState value)  $default,){
final _that = this;
switch (_that) {
case _AppConfigState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppConfigState value)?  $default,){
final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String appName,  String version,  String apiBaseUrl,  int maxTodosPerUser,  bool enableOfflineMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
return $default(_that.appName,_that.version,_that.apiBaseUrl,_that.maxTodosPerUser,_that.enableOfflineMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String appName,  String version,  String apiBaseUrl,  int maxTodosPerUser,  bool enableOfflineMode)  $default,) {final _that = this;
switch (_that) {
case _AppConfigState():
return $default(_that.appName,_that.version,_that.apiBaseUrl,_that.maxTodosPerUser,_that.enableOfflineMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String appName,  String version,  String apiBaseUrl,  int maxTodosPerUser,  bool enableOfflineMode)?  $default,) {final _that = this;
switch (_that) {
case _AppConfigState() when $default != null:
return $default(_that.appName,_that.version,_that.apiBaseUrl,_that.maxTodosPerUser,_that.enableOfflineMode);case _:
  return null;

}
}

}

/// @nodoc


class _AppConfigState extends AppConfigState {
   _AppConfigState({this.appName = 'Riverpod Todo App', this.version = '1.0.0', this.apiBaseUrl = 'https://jsonplaceholder.typicode.com', this.maxTodosPerUser = 100, this.enableOfflineMode = true}): super._();
  

@override@JsonKey() final  String appName;
@override@JsonKey() final  String version;
@override@JsonKey() final  String apiBaseUrl;
@override@JsonKey() final  int maxTodosPerUser;
@override@JsonKey() final  bool enableOfflineMode;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppConfigStateCopyWith<_AppConfigState> get copyWith => __$AppConfigStateCopyWithImpl<_AppConfigState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppConfigState&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.version, version) || other.version == version)&&(identical(other.apiBaseUrl, apiBaseUrl) || other.apiBaseUrl == apiBaseUrl)&&(identical(other.maxTodosPerUser, maxTodosPerUser) || other.maxTodosPerUser == maxTodosPerUser)&&(identical(other.enableOfflineMode, enableOfflineMode) || other.enableOfflineMode == enableOfflineMode));
}


@override
int get hashCode => Object.hash(runtimeType,appName,version,apiBaseUrl,maxTodosPerUser,enableOfflineMode);

@override
String toString() {
  return 'AppConfigState(appName: $appName, version: $version, apiBaseUrl: $apiBaseUrl, maxTodosPerUser: $maxTodosPerUser, enableOfflineMode: $enableOfflineMode)';
}


}

/// @nodoc
abstract mixin class _$AppConfigStateCopyWith<$Res> implements $AppConfigStateCopyWith<$Res> {
  factory _$AppConfigStateCopyWith(_AppConfigState value, $Res Function(_AppConfigState) _then) = __$AppConfigStateCopyWithImpl;
@override @useResult
$Res call({
 String appName, String version, String apiBaseUrl, int maxTodosPerUser, bool enableOfflineMode
});




}
/// @nodoc
class __$AppConfigStateCopyWithImpl<$Res>
    implements _$AppConfigStateCopyWith<$Res> {
  __$AppConfigStateCopyWithImpl(this._self, this._then);

  final _AppConfigState _self;
  final $Res Function(_AppConfigState) _then;

/// Create a copy of AppConfigState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appName = null,Object? version = null,Object? apiBaseUrl = null,Object? maxTodosPerUser = null,Object? enableOfflineMode = null,}) {
  return _then(_AppConfigState(
appName: null == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,apiBaseUrl: null == apiBaseUrl ? _self.apiBaseUrl : apiBaseUrl // ignore: cast_nullable_to_non_nullable
as String,maxTodosPerUser: null == maxTodosPerUser ? _self.maxTodosPerUser : maxTodosPerUser // ignore: cast_nullable_to_non_nullable
as int,enableOfflineMode: null == enableOfflineMode ? _self.enableOfflineMode : enableOfflineMode // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
