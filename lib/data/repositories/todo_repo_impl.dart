import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/todo_entity.dart';
import '../../domain/repositories/todo_repository.dart';
import '../models/todo_model.dart';

class TodoRepositoryImpl implements TodoRepository {
  final SharedPreferences _prefs;
  final _uuid = const Uuid();
  static const String _todosStorageKey = 'cached_todos_list';

  final StreamController<List<TodoEntity>> _todosStreamController =
      StreamController<List<TodoEntity>>.broadcast();

  TodoRepositoryImpl({required SharedPreferences prefs}) : _prefs = prefs {
    _emitCurrentTodos();
  }

  @override
  Stream<List<TodoEntity>> get todosStream => _todosStreamController.stream;

  Stream<List<TodoEntity>> watchTodosForUser(String userId) {
    return todosStream.map(
      (allTodos) => allTodos.where((todo) => todo.userId == userId).toList(),
    );
  }

  @override
  Future<TodoEntity> createTodoEntity({
    required String title,
    required String description,
    required TodoPriority priority,
    required String userId,
    required List<String> tags,
    required DateTime? dueDate,
  }) async {
    final now = DateTime.now();

    final newModel = TodoModel(
      id: _uuid.v4(),
      title: title,
      description: description,
      priority: priority,
      status: TodoStatus.pending,
      createdAt: now,
      updatedAt: now,
      tags: tags.isEmpty ? null : tags.join(','),
      userId: userId,
    );

    final currentModels = _loadAllModels();
    currentModels.add(newModel);
    await _saveAllModels(currentModels);

    return newModel.toEntity();
  }

  @override
  Future<TodoEntity> updateTodoEntity(TodoEntity todo) async {
    final currentModels = _loadAllModels();
    final now = DateTime.now();

    final updatedModel = TodoModel.fromEntity(todo).copyWith(updatedAt: now);

    final index = currentModels.indexWhere((m) => m.id == todo.id);
    if (index != -1) {
      currentModels[index] = updatedModel;
    } else {
      currentModels.add(updatedModel);
    }

    await _saveAllModels(currentModels);
    return updatedModel.toEntity();
  }

  @override
  Future<void> deleteTodoEntity(String todoID, String userId) async {
    final currentModels = _loadAllModels();

    currentModels.removeWhere(
      (model) => model.id == todoID && model.userId == userId,
    );

    await _saveAllModels(currentModels);
  }

  @override
  Future<List<TodoEntity>> searchTodoEntity(String userID, String query) async {
    final todos = await getTodoEntity(userID);
    if (query.isEmpty) return todos;

    final lowerQuery = query.toLowerCase();
    return todos.where((todo) {
      final matchesTitle = todo.title.toLowerCase().contains(lowerQuery);
      final matchesDescription = todo.description.toLowerCase().contains(
        lowerQuery,
      );
      final matchesTags =
          todo.tags?.toLowerCase().contains(lowerQuery) ?? false;
      return matchesTitle || matchesDescription || matchesTags;
    }).toList();
  }

  @override
  Future<List<TodoEntity>> getTodoEntity(String userId) async {
    return _loadAllModels()
        .where((model) => model.userId == userId)
        .map((model) => model.toEntity())
        .toList();
  }

  @override
  Future<List<TodoEntity>> getOverdueTodoEntity(String userId) async {
    final todos = await getTodoEntity(userId);
    final now = DateTime.now();

    return todos.where((todo) {
      if (todo.dueDate == null || todo.status == TodoStatus.completed) {
        return false;
      }
      return todo.dueDate!.isBefore(now);
    }).toList();
  }

  @override
  Future<List<TodoEntity>> getTodoEntityByPriority(
    String userId,
    TodoPriority priority,
  ) async {
    final todos = await getTodoEntity(userId);
    return todos.where((todo) => todo.priority == priority).toList();
  }

  @override
  Future<List<TodoEntity>> getTodosByStatus(
    String userId,
    TodoStatus status,
  ) async {
    final todos = await getTodoEntity(userId);
    return todos.where((todo) => todo.status == status).toList();
  }

  List<TodoModel> _loadAllModels() {
    final rawJson = _prefs.getString(_todosStorageKey);
    if (rawJson == null) return [];

    try {
      final decodedList = jsonDecode(rawJson) as List<dynamic>;
      return decodedList
          .map((item) => TodoModel.fromJson(item as Map<String, dynamic>))
          .toList();
    } catch (_) {
      return [];
    }
  }

  Future<void> _saveAllModels(List<TodoModel> models) async {
    final rawJson = jsonEncode(models.map((m) => m.toJson()).toList());
    await _prefs.setString(_todosStorageKey, rawJson);

    _emitCurrentTodos();
  }

  void _emitCurrentTodos() {
    final allEntities = _loadAllModels().map((m) => m.toEntity()).toList();
    _todosStreamController.add(allEntities);
  }

  void dispose() {
    _todosStreamController.close();
  }
}
