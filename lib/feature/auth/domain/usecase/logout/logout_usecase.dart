import 'package:study_case/core/model/result.dart';
import 'package:study_case/core/model/usecase.dart';
import 'package:study_case/feature/auth/domain/repositories/i_auth_repository.dart';

class LogoutUsecase extends Usecase<Result<void>, void> {
  final IAuthRepository _authRepository;

  LogoutUsecase({required IAuthRepository authRepository})
    : _authRepository = authRepository;

  @override
  Future<Result<void>> call(void params) async {
    try {
      final result = await _authRepository.logout();

      if (result.isSuccess) {
        return result;
      } else {
        return Result.failed(result.errorMessage ?? 'logout failed');
      }
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}
