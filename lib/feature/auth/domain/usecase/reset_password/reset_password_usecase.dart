import 'package:study_case/core/model/result.dart';
import 'package:study_case/core/model/usecase.dart';
import 'package:study_case/feature/auth/domain/repositories/i_auth_repository.dart';
import 'package:study_case/feature/auth/domain/usecase/reset_password/reset_password_param.dart';

class ResetPasswordUsecase extends Usecase<Result<void>, ResetPasswordParam> {
  final IAuthRepository _authRepository;

  ResetPasswordUsecase({required IAuthRepository authRepository})
    : _authRepository = authRepository;

  @override
  Future<Result<void>> call(ResetPasswordParam params) async {
    try {
      var result = await _authRepository.resetPassword(email: params.email);

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
