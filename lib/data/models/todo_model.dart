import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/todo_entity.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class TodoModel with _$TodoModel {
  const TodoModel._();

  const factory TodoModel({
    required String id,
    required String title,
    required String description,
    required TodoPriority priority,
    required TodoStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? dueDate,
    required String? tags,
    required String userId,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  factory TodoModel.fromEntity(TodoEntity entity) {
    return TodoModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      priority: entity.priority,
      status: entity.status,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      dueDate: entity.dueDate,
      tags: entity.tags,
      userId: entity.userId,
    );
  }

  TodoEntity toEntity() {
    return TodoEntity(
      id: id,
      title: title,
      description: description,
      priority: priority,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
      dueDate: dueDate,
      tags: tags,
      userId: userId,
    );
  }

  @override
  // TODO: implement createdAt
  DateTime get createdAt => throw UnimplementedError();

  @override
  // TODO: implement description
  String get description => throw UnimplementedError();

  @override
  // TODO: implement dueDate
  DateTime? get dueDate => throw UnimplementedError();

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

  @override
  // TODO: implement priority
  TodoPriority get priority => throw UnimplementedError();

  @override
  // TODO: implement status
  TodoStatus get status => throw UnimplementedError();

  @override
  // TODO: implement tags
  String? get tags => throw UnimplementedError();

  @override
  // TODO: implement title
  String get title => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement updatedAt
  DateTime get updatedAt => throw UnimplementedError();

  @override
  // TODO: implement userId
  String get userId => throw UnimplementedError();
}
