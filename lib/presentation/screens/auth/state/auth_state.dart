import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/user_entity.dart';
import '../enum/auth_state_enum.dart';

part 'auth_state.freezed.dart';

@Freezed(toJson: false, fromJson: false)
abstract class AuthState with _$AuthState {
  factory AuthState({
    required AuthStatus status,
    UserEntity? user,
    String? errorMessage,
    DateTime? lastErrorTime,
  }) = _AuthState;

  AuthState._();

  bool get isLoading => status == AuthStatus.loading;
  bool get isAuthenticated => status == AuthStatus.authenticated;
  bool get hasError => errorMessage != null;
}
