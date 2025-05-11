import 'package:study_case/core/model/result.dart';
import 'package:study_case/core/model/usecase.dart';
import 'package:study_case/feature/auth/domain/entities/user_model.dart';
import 'package:study_case/feature/auth/domain/repositories/i_auth_repository.dart';

class SignInGoogleUsecase extends Usecase<Result<UserModel>, void> {
  final IAuthRepository _authRepository;

  SignInGoogleUsecase({required IAuthRepository authRepository})
    : _authRepository = authRepository;

  @override
  Future<Result<UserModel>> call(void params) async {
    return await _authRepository.signInWithGoogle();
  }
}
