import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/datasources/shared_preferences_provider.dart';
import '../../../../data/repositories/auth_repo_impl.dart';
import '../../../../domain/entities/user_entity.dart';
import '../../../../domain/repositories/auth_repository.dart';
import '../enum/auth_state_enum.dart';
import '../state/auth_state.dart';

part 'auth_controller.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(prefs: ref.watch(sharedPreferencesProvider));
}

@riverpod
class AuthController extends _$AuthController {
  AuthRepository get _authRepository => ref.read(authRepositoryProvider);

  @override
  AuthState build() {
    Future.microtask(() => _checkExistingAuth());
    return AuthState(status: AuthStatus.initial);
  }

  Future<void> _checkExistingAuth() async {
    try {
      final isAuthenticated = await _authRepository.isAuthenticated();
      if (isAuthenticated) {
        final user = await _authRepository.getCurrentUser();
        if (user != null) {
          state = AuthState(status: AuthStatus.authenticated, user: user);
        } else {
          state = AuthState(status: AuthStatus.unauthenticated);
        }
      } else {
        state = AuthState(status: AuthStatus.unauthenticated);
      }
    } catch (e) {
      state = AuthState(status: AuthStatus.unauthenticated);
    }
  }

  Future<UserEntity> login(String email, String password) async {
    state = state.copyWith(status: AuthStatus.loading, errorMessage: null);

    try {
      final userEntity = await _authRepository.login(email, password);
      state = state.copyWith(
        status: AuthStatus.authenticated,
        user: userEntity,
      );
      return userEntity;
    } catch (e) {
      state = state.copyWith(
        status: AuthStatus.unauthenticated,
        errorMessage: e.toString(),
        lastErrorTime: DateTime.now(),
      );
      rethrow;
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
    state = state.copyWith(status: AuthStatus.unauthenticated, user: null);
  }

  void clearError() {
    state = state.copyWith(errorMessage: null, lastErrorTime: null);
  }
}
