import 'package:detailed__riverpod_app/data/repositories/todo_repo_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/todo_repository.dart';
import '../datasources/shared_preferences_provider.dart';

part 'todo_repository_provider.g.dart';

@riverpod
TodoRepository todoRepository(Ref ref) {
  final prefsInstance = ref.watch(sharedPreferencesProvider);
  return TodoRepositoryImpl(prefs: prefsInstance);
}
