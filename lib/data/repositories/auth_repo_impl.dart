import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final SharedPreferences _prefs;
  final _uuid = const Uuid();

  static const String _tokenKey = 'auth_token';
  static const String _userKey = 'user_data';

  const AuthRepositoryImpl({required SharedPreferences prefs}) : _prefs = prefs;

  @override
  Future<UserEntity> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));

    if (email.isEmpty || password.isEmpty) {
      throw const AuthException('Email and password are required');
    }

    if (password.length < 6) {
      throw const AuthException('Password must be at least 6 characters');
    }

    if (Random().nextDouble() < 0.1) {
      throw const AuthException('Network error. Please try again.');
    }

    final userModel = UserModel(
      id: _uuid.v4(),
      email: email,
      name: email
          .split('@')[0]
          .replaceAll('.', ' ')
          .split(' ')
          .map(
            (word) => word.isNotEmpty
                ? word[0].toUpperCase() + word.substring(1)
                : '',
          )
          .join(' '),
      avatarUrl:
          'https://ui-avatars.com/api/?name=${Uri.encodeComponent(email)}&background=random',
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
      lastLoginAt: DateTime.now(),
    );

    await _saveUserModel(userModel);
    await _saveToken('mock_token_${_uuid.v4()}');

    return userModel.toEntity();
  }

  @override
  Future<void> logout() async {
    await _prefs.remove(_tokenKey);
    await _prefs.remove(_userKey);
  }

  @override
  Future<UserEntity?> getCurrentUser() async {
    final token = _prefs.getString(_tokenKey);
    if (token == null) return null;

    final userJson = _prefs.getString(_userKey);
    if (userJson == null) return null;

    try {
      final userMap = jsonDecode(userJson) as Map<String, dynamic>;
      final userModel = UserModel.fromJson(userMap);
      return userModel.toEntity();
    } catch (e) {
      await logout();
      return null;
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    final token = _prefs.getString(_tokenKey);
    return token != null;
  }

  @override
  Future<void> refreshUser() async {
    final currentEntity = await getCurrentUser();
    if (currentEntity != null) {
      final updatedModel = UserModel.fromEntity(
        currentEntity,
      ).copyWith(lastLoginAt: DateTime.now());
      await _saveUserModel(updatedModel);
    }
  }

  Future<void> _saveUserModel(UserModel model) async {
    await _prefs.setString(_userKey, jsonEncode(model.toJson()));
  }

  Future<void> _saveToken(String token) async {
    await _prefs.setString(_tokenKey, token);
  }
}
