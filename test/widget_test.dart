import 'package:detailed__riverpod_app/domain/entities/todo_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TodoEntity Tests', () {
    test('copyWith works correctly', () {
      final now = DateTime.now();
      final todo = TodoEntity(
        id: '1',
        title: 'Test Title',
        description: 'Test Description',
        priority: TodoPriority.medium,
        status: TodoStatus.pending,
        createdAt: now,
        updatedAt: now,
        tags: 'test',
        userId: 'user1',
      );

      final updatedTodo = todo.copyWith(status: TodoStatus.completed);

      expect(updatedTodo.id, '1');
      expect(updatedTodo.status, TodoStatus.completed);
      expect(updatedTodo.title, 'Test Title');
    });
  });
}
