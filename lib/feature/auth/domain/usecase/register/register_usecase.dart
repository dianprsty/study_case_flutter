import 'package:study_case/core/model/result.dart';
import 'package:study_case/core/model/usecase.dart';
import 'package:study_case/feature/auth/domain/repositories/i_auth_repository.dart';
import 'package:study_case/feature/auth/domain/usecase/register/register_param.dart';

class RegisterUsecase extends Usecase<Result<void>, RegisterParam> {
  final IAuthRepository _authRepository;

  RegisterUsecase({required IAuthRepository authRepository})
    : _authRepository = authRepository;

  @override
  Future<Result<void>> call(RegisterParam params) async {
    var result = await _authRepository.register(
      email: params.email,
      password: params.password,
    );

    if (result.isSuccess) {
      return result;
    } else {
      return Result.failed(result.errorMessage ?? 'register failed');
    }
  }
}
