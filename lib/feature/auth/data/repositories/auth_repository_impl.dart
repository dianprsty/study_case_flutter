import 'package:study_case/core/model/result.dart';
import 'package:study_case/feature/auth/data/datasources/auth_remote_datasourse.dart';
import 'package:study_case/feature/auth/domain/entities/user_model.dart';
import 'package:study_case/feature/auth/domain/repositories/i_auth_repository.dart';

class AuthRepositoryImpl extends IAuthRepository {
  final AuthRemoteDatasourseImpl _authRemoteDatasourseImpl;

  AuthRepositoryImpl({
    required AuthRemoteDatasourseImpl authRemoteDatasourseImpl,
  }) : _authRemoteDatasourseImpl = authRemoteDatasourseImpl;

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
}
