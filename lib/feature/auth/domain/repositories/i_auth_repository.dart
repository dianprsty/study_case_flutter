import 'package:study_case/core/model/result.dart';

abstract interface class IAuthRepository {
  Future<Result<void>> login({required String email, required String password});
  Future<Result<void>> register({
    required String email,
    required String password,
  });
  Future<Result<void>> logout();
}
