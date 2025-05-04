import 'package:study_case/core/model/result.dart';
import 'package:study_case/core/model/usecase.dart';
import 'package:study_case/feature/auth/domain/entities/user_model.dart';
import 'package:study_case/feature/auth/domain/repositories/i_auth_repository.dart';
import 'package:study_case/feature/auth/domain/usecase/login/login_param.dart';

class LoginUsecase extends Usecase<Result<UserModel>, LoginParam> {
  final IAuthRepository _authRepository;

  LoginUsecase({required IAuthRepository authRepository})
    : _authRepository = authRepository;

  @override
  Future<Result<UserModel>> call(LoginParam params) async {
    try {
      final result = await _authRepository.login(
        email: params.email,
        password: params.password,
      );

      if (result.isSuccess) {
        return result;
      } else {
        return Result.failed(result.errorMessage ?? 'login failed');
      }
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}
