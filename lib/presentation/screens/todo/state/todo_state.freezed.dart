// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoState {

 List<TodoEntity> get todos; bool get isLoading; String? get errorMessage; DateTime? get lastErrorTime; String get searchQuery; TodoStatus? get selectedStatusFilter; TodoPriority? get selectedPriorityFilter; SortOrder get sortOrder;
/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoStateCopyWith<TodoState> get copyWith => _$TodoStateCopyWithImpl<TodoState>(this as TodoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoState&&const DeepCollectionEquality().equals(other.todos, todos)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.lastErrorTime, lastErrorTime) || other.lastErrorTime == lastErrorTime)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedStatusFilter, selectedStatusFilter) || other.selectedStatusFilter == selectedStatusFilter)&&(identical(other.selectedPriorityFilter, selectedPriorityFilter) || other.selectedPriorityFilter == selectedPriorityFilter)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(todos),isLoading,errorMessage,lastErrorTime,searchQuery,selectedStatusFilter,selectedPriorityFilter,sortOrder);

@override
String toString() {
  return 'TodoState(todos: $todos, isLoading: $isLoading, errorMessage: $errorMessage, lastErrorTime: $lastErrorTime, searchQuery: $searchQuery, selectedStatusFilter: $selectedStatusFilter, selectedPriorityFilter: $selectedPriorityFilter, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $TodoStateCopyWith<$Res>  {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) _then) = _$TodoStateCopyWithImpl;
@useResult
$Res call({
 List<TodoEntity> todos, bool isLoading, String? errorMessage, DateTime? lastErrorTime, String searchQuery, TodoStatus? selectedStatusFilter, TodoPriority? selectedPriorityFilter, SortOrder sortOrder
});




}
/// @nodoc
class _$TodoStateCopyWithImpl<$Res>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._self, this._then);

  final TodoState _self;
  final $Res Function(TodoState) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todos = null,Object? isLoading = null,Object? errorMessage = freezed,Object? lastErrorTime = freezed,Object? searchQuery = null,Object? selectedStatusFilter = freezed,Object? selectedPriorityFilter = freezed,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
todos: null == todos ? _self.todos : todos // ignore: cast_nullable_to_non_nullable
as List<TodoEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,lastErrorTime: freezed == lastErrorTime ? _self.lastErrorTime : lastErrorTime // ignore: cast_nullable_to_non_nullable
as DateTime?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,selectedStatusFilter: freezed == selectedStatusFilter ? _self.selectedStatusFilter : selectedStatusFilter // ignore: cast_nullable_to_non_nullable
as TodoStatus?,selectedPriorityFilter: freezed == selectedPriorityFilter ? _self.selectedPriorityFilter : selectedPriorityFilter // ignore: cast_nullable_to_non_nullable
as TodoPriority?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}

}


/// Adds pattern-matching-related methods to [TodoState].
extension TodoStatePatterns on TodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodoState value)  $default,){
final _that = this;
switch (_that) {
case _TodoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodoState value)?  $default,){
final _that = this;
switch (_that) {
case _TodoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TodoEntity> todos,  bool isLoading,  String? errorMessage,  DateTime? lastErrorTime,  String searchQuery,  TodoStatus? selectedStatusFilter,  TodoPriority? selectedPriorityFilter,  SortOrder sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodoState() when $default != null:
return $default(_that.todos,_that.isLoading,_that.errorMessage,_that.lastErrorTime,_that.searchQuery,_that.selectedStatusFilter,_that.selectedPriorityFilter,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TodoEntity> todos,  bool isLoading,  String? errorMessage,  DateTime? lastErrorTime,  String searchQuery,  TodoStatus? selectedStatusFilter,  TodoPriority? selectedPriorityFilter,  SortOrder sortOrder)  $default,) {final _that = this;
switch (_that) {
case _TodoState():
return $default(_that.todos,_that.isLoading,_that.errorMessage,_that.lastErrorTime,_that.searchQuery,_that.selectedStatusFilter,_that.selectedPriorityFilter,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TodoEntity> todos,  bool isLoading,  String? errorMessage,  DateTime? lastErrorTime,  String searchQuery,  TodoStatus? selectedStatusFilter,  TodoPriority? selectedPriorityFilter,  SortOrder sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _TodoState() when $default != null:
return $default(_that.todos,_that.isLoading,_that.errorMessage,_that.lastErrorTime,_that.searchQuery,_that.selectedStatusFilter,_that.selectedPriorityFilter,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc


class _TodoState extends TodoState {
   _TodoState({final  List<TodoEntity> todos = const [], this.isLoading = false, this.errorMessage, this.lastErrorTime, this.searchQuery = '', this.selectedStatusFilter, this.selectedPriorityFilter, this.sortOrder = SortOrder.createdAtDesc}): _todos = todos,super._();
  

 final  List<TodoEntity> _todos;
@override@JsonKey() List<TodoEntity> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override final  DateTime? lastErrorTime;
@override@JsonKey() final  String searchQuery;
@override final  TodoStatus? selectedStatusFilter;
@override final  TodoPriority? selectedPriorityFilter;
@override@JsonKey() final  SortOrder sortOrder;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoStateCopyWith<_TodoState> get copyWith => __$TodoStateCopyWithImpl<_TodoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoState&&const DeepCollectionEquality().equals(other._todos, _todos)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.lastErrorTime, lastErrorTime) || other.lastErrorTime == lastErrorTime)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.selectedStatusFilter, selectedStatusFilter) || other.selectedStatusFilter == selectedStatusFilter)&&(identical(other.selectedPriorityFilter, selectedPriorityFilter) || other.selectedPriorityFilter == selectedPriorityFilter)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todos),isLoading,errorMessage,lastErrorTime,searchQuery,selectedStatusFilter,selectedPriorityFilter,sortOrder);

@override
String toString() {
  return 'TodoState(todos: $todos, isLoading: $isLoading, errorMessage: $errorMessage, lastErrorTime: $lastErrorTime, searchQuery: $searchQuery, selectedStatusFilter: $selectedStatusFilter, selectedPriorityFilter: $selectedPriorityFilter, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$TodoStateCopyWith(_TodoState value, $Res Function(_TodoState) _then) = __$TodoStateCopyWithImpl;
@override @useResult
$Res call({
 List<TodoEntity> todos, bool isLoading, String? errorMessage, DateTime? lastErrorTime, String searchQuery, TodoStatus? selectedStatusFilter, TodoPriority? selectedPriorityFilter, SortOrder sortOrder
});




}
/// @nodoc
class __$TodoStateCopyWithImpl<$Res>
    implements _$TodoStateCopyWith<$Res> {
  __$TodoStateCopyWithImpl(this._self, this._then);

  final _TodoState _self;
  final $Res Function(_TodoState) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todos = null,Object? isLoading = null,Object? errorMessage = freezed,Object? lastErrorTime = freezed,Object? searchQuery = null,Object? selectedStatusFilter = freezed,Object? selectedPriorityFilter = freezed,Object? sortOrder = null,}) {
  return _then(_TodoState(
todos: null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<TodoEntity>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,lastErrorTime: freezed == lastErrorTime ? _self.lastErrorTime : lastErrorTime // ignore: cast_nullable_to_non_nullable
as DateTime?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,selectedStatusFilter: freezed == selectedStatusFilter ? _self.selectedStatusFilter : selectedStatusFilter // ignore: cast_nullable_to_non_nullable
as TodoStatus?,selectedPriorityFilter: freezed == selectedPriorityFilter ? _self.selectedPriorityFilter : selectedPriorityFilter // ignore: cast_nullable_to_non_nullable
as TodoPriority?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}


}

// dart format on
