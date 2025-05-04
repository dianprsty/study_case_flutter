import 'package:study_case/core/model/result.dart';
import 'package:study_case/feature/auth/domain/entities/user_model.dart';

abstract class IAuthRepository {
  Future<Result<UserModel>> login({
    required String email,
    required String password,
  });
  Future<Result<void>> register({
    required String name,
    required String email,
    required String password,
  });
  Future<Result<void>> logout();
}
