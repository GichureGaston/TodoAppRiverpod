import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/repositories/todo_repository_provider.dart';
import '../../../../domain/repositories/todo_repository.dart';
import '../state/stats_state.dart';

part 'stats_controller.g.dart';

@riverpod
class StatsController extends _$StatsController {
  TodoRepository get _todoRepository => ref.read(todoRepositoryProvider);
  @override
  StatsState build() {
    return StatsState();
  }

  Future<void> loadStats(String userId) async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final todos = await _todoRepository.getTodoEntity(userId);

      final stats = TodoStats.fromTodos(todos);

      state = state.copyWith(stats: stats, isLoading: false);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
        lastErrorTime: DateTime.now(),
      );
    }
  }

  void clearError() {
    state = state.copyWith(errorMessage: null, lastErrorTime: null);
  }
}
