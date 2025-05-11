import 'package:firebase_auth/firebase_auth.dart';

import 'package:study_case/core/model/result.dart';
import 'package:study_case/feature/auth/data/datasources/auth_remote_datasourse.dart';
import 'package:study_case/feature/auth/domain/entities/user_model.dart';
import 'package:study_case/feature/auth/domain/repositories/i_auth_repository.dart';

class AuthRepositoryImpl extends IAuthRepository {
  final IAuthRemoteDataSourse _authRemoteDatasourseImpl;

  AuthRepositoryImpl({required IAuthRemoteDataSourse authRemoteDatasourseImpl})
    : _authRemoteDatasourseImpl = authRemoteDatasourseImpl;

  @override
  Future<Result<UserModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _authRemoteDatasourseImpl.login(
        email: email,
        password: password,
      );

      if (result.isSuccess) {
        final user = result.value!;
        final userModel = UserModel(
          uid: user.uid,
          email: user.email,
          name: user.displayName ?? '',
        );
        return Result.success(userModel);
      } else {
        return Result.failed(result.errorMessage ?? 'login failed');
      }
    } catch (e) {
      return Result.failed(e.toString());
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      final result = await _authRemoteDatasourseImpl.logout();

      if (result.isSuccess) {
        return Result.success(null);
      } else {
        return Result.failed(result.errorMessage ?? 'logout failed');
      }
    } catch (e) {
      return Result.failed(e.toString());
    }
  }

  @override
  Future<Result<void>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final result = await _authRemoteDatasourseImpl.register(
        name: name,
        email: email,
        password: password,
      );

      if (result.isSuccess) {
        return result;
      } else {
        return Result.failed(result.errorMessage ?? 'register failed');
      }
    } catch (e) {
      return Result.failed(e.toString());
    }
  }

  @override
  Future<Result<UserModel>> signInWithGoogle() async {
    final result = await _authRemoteDatasourseImpl.signInWithGoogle();

    if (result.isSuccess) {
      final user = result.value!;
      final userModel = UserModel(
        uid: user.uid,
        email: user.email,
        name: user.displayName ?? '',
      );
      return Result.success(userModel);
    } else {
      return Result.failed(result.errorMessage ?? 'login failed');
    }
  }

  @override
  Future<Result<UserModel?>> getUser() async {
    final result = await _authRemoteDatasourseImpl.getUser();

    if (result.isSuccess) {
      final user = result.value;
      if (user == null) return Result.success(null);
      final userModel = UserModel(
        uid: user.uid,
        email: user.email,
        name: user.displayName ?? '',
      );
      return Result.success(userModel);
    } else {
      return Result.failed("");
    }
  }

  @override
  Future<Result<void>> resetPassword({required String email}) async {
    try {
      final result = await _authRemoteDatasourseImpl.resetPassword(
        email: email,
      );

      if (result.isSuccess) {
        return result;
      } else {
        return Result.failed(result.errorMessage ?? 'reset password failed');
      }
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}
