import 'package:detailed__riverpod_app/domain/entities/todo_entity.dart';

abstract class TodoRepository {
  //get todo
  Stream<List<TodoEntity>> get todosStream;

  //get todo list
  Future<List<TodoEntity>> getTodoEntity(String userId);

  //update todo
  Future<TodoEntity> updateTodoEntity(TodoEntity todo);
  //create todo
  Future<TodoEntity> createTodoEntity({
    required String title,
    required String description,
    required TodoPriority priority,
    required String userId,
    required List<String> tags,
    required DateTime? dueDate,
  });
  //delete todo
  Future<void> deleteTodoEntity(String todoId, String userId);

  //search todo
  Future<List<TodoEntity>> searchTodoEntity(String userId, String query);
  //get overdue todo
  Future<List<TodoEntity>> getOverdueTodoEntity(String userId);
  //save todo
  // get todo by priority
  Future<List<TodoEntity>> getTodoEntityByPriority(
    String userId,
    TodoPriority priority,
  );
  // get todo by status
  Future<List<TodoEntity>> getTodosByStatus(String userId, TodoStatus status);
}
