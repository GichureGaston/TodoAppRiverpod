enum TodoPriority { low, medium, high }

enum TodoStatus { pending, inProgress, completed }

class TodoEntity {
  final String id;
  final String title;
  final String description;
  final TodoPriority priority;
  final TodoStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? dueDate;
  final String? tags;
  final String userId;

  const TodoEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.priority,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.dueDate,
    required this.tags,
    required this.userId,
  });

  TodoEntity copyWith({
    TodoStatus? status,
    String? description,
    TodoPriority? priority,
    String? title,
    DateTime? dueDate,
    String? tags,
    DateTime? updatedAt,
  }) {
    return TodoEntity(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      priority: priority ?? this.priority,
      status: status ?? this.status,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      dueDate: dueDate ?? this.dueDate,
      tags: tags ?? this.tags,
      userId: userId,
    );
  }
}
