import 'package:firebase_auth/firebase_auth.dart';

import 'package:study_case/core/model/result.dart';

abstract class IAuthRemoteDataSourse {
  Future<Result<User>> login({required String email, required String password});

  Future<Result<void>> register({
    required String name,
    required String email,
    required String password,
  });

  Future<Result<void>> logout();
}

class AuthRemoteDatasourseImpl extends IAuthRemoteDataSourse {
  final FirebaseAuth _firebaseAuth;

  AuthRemoteDatasourseImpl({required FirebaseAuth firebaseAuth})
    : _firebaseAuth = firebaseAuth;

  @override
  Future<Result<User>> login({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (result.user != null) {
        return Result.success(result.user!);
      } else {
        return Result.failed('login failed');
      }
    } on FirebaseAuthException catch (e) {
      return Result.failed(e.message ?? 'login failed');
    } catch (e) {
      return Result.failed(e.toString());
    }
  }

  @override
  Future<Result<void>> logout() async {
    try {
      final result = await _firebaseAuth.signOut();
      return Result.success(result);
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
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (result.user != null) {
        await result.user!.updateDisplayName(name);
        return Result.success(null);
      } else {
        return Result.failed('register failed');
      }
    } on FirebaseAuthException catch (e) {
      return Result.failed(e.message ?? 'register failed');
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}
