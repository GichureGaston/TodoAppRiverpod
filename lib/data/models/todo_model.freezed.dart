// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoModel {

 String get id; String get title; String get description; TodoPriority get priority; TodoStatus get status; DateTime get createdAt; DateTime get updatedAt; DateTime? get dueDate; String? get tags; String get userId;
/// Create a copy of TodoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoModelCopyWith<TodoModel> get copyWith => _$TodoModelCopyWithImpl<TodoModel>(this as TodoModel, _$identity);

  /// Serializes this TodoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,priority,status,createdAt,updatedAt,dueDate,tags,userId);

@override
String toString() {
  return 'TodoModel(id: $id, title: $title, description: $description, priority: $priority, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, dueDate: $dueDate, tags: $tags, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $TodoModelCopyWith<$Res>  {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) _then) = _$TodoModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, TodoPriority priority, TodoStatus status, DateTime createdAt, DateTime updatedAt, DateTime? dueDate, String? tags, String userId
});




}
/// @nodoc
class _$TodoModelCopyWithImpl<$Res>
    implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._self, this._then);

  final TodoModel _self;
  final $Res Function(TodoModel) _then;

/// Create a copy of TodoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? priority = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? dueDate = freezed,Object? tags = freezed,Object? userId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TodoPriority,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TodoStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TodoModel].
extension TodoModelPatterns on TodoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodoModel value)  $default,){
final _that = this;
switch (_that) {
case _TodoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodoModel value)?  $default,){
final _that = this;
switch (_that) {
case _TodoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  TodoPriority priority,  TodoStatus status,  DateTime createdAt,  DateTime updatedAt,  DateTime? dueDate,  String? tags,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodoModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.priority,_that.status,_that.createdAt,_that.updatedAt,_that.dueDate,_that.tags,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  TodoPriority priority,  TodoStatus status,  DateTime createdAt,  DateTime updatedAt,  DateTime? dueDate,  String? tags,  String userId)  $default,) {final _that = this;
switch (_that) {
case _TodoModel():
return $default(_that.id,_that.title,_that.description,_that.priority,_that.status,_that.createdAt,_that.updatedAt,_that.dueDate,_that.tags,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  TodoPriority priority,  TodoStatus status,  DateTime createdAt,  DateTime updatedAt,  DateTime? dueDate,  String? tags,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _TodoModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.priority,_that.status,_that.createdAt,_that.updatedAt,_that.dueDate,_that.tags,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodoModel extends TodoModel {
  const _TodoModel({required this.id, required this.title, required this.description, required this.priority, required this.status, required this.createdAt, required this.updatedAt, this.dueDate, required this.tags, required this.userId}): super._();
  factory _TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  TodoPriority priority;
@override final  TodoStatus status;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  DateTime? dueDate;
@override final  String? tags;
@override final  String userId;

/// Create a copy of TodoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoModelCopyWith<_TodoModel> get copyWith => __$TodoModelCopyWithImpl<_TodoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,priority,status,createdAt,updatedAt,dueDate,tags,userId);

@override
String toString() {
  return 'TodoModel(id: $id, title: $title, description: $description, priority: $priority, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, dueDate: $dueDate, tags: $tags, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$TodoModelCopyWith<$Res> implements $TodoModelCopyWith<$Res> {
  factory _$TodoModelCopyWith(_TodoModel value, $Res Function(_TodoModel) _then) = __$TodoModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, TodoPriority priority, TodoStatus status, DateTime createdAt, DateTime updatedAt, DateTime? dueDate, String? tags, String userId
});




}
/// @nodoc
class __$TodoModelCopyWithImpl<$Res>
    implements _$TodoModelCopyWith<$Res> {
  __$TodoModelCopyWithImpl(this._self, this._then);

  final _TodoModel _self;
  final $Res Function(_TodoModel) _then;

/// Create a copy of TodoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? priority = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? dueDate = freezed,Object? tags = freezed,Object? userId = null,}) {
  return _then(_TodoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TodoPriority,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TodoStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
