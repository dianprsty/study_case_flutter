import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:study_case/core/model/result.dart';

abstract class IAuthRemoteDataSourse {
  Future<Result<User>> login({required String email, required String password});

  Future<Result<void>> register({
    required String name,
    required String email,
    required String password,
  });

  Future<Result<void>> logout();

  Future<Result<User>> signInWithGoogle();
  Future<Result<User?>> getUser();

  Future<Result<void>> resetPassword({required String email});
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

      if (result.user != null && result.user!.emailVerified) {
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
      await GoogleSignIn().signOut();
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
        await result.user!.sendEmailVerification();
        await _firebaseAuth.signOut();
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

  @override
  Future<Result<User>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        return Result.failed('');
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final result = await _firebaseAuth.signInWithCredential(credential);

      if (result.user != null) {
        return Result.success(result.user!);
      } else {
        return Result.failed('login failed');
      }
    } catch (e) {
      return Result.failed(e.toString());
    }
  }

  @override
  Future<Result<User?>> getUser() {
    return Future.value(Result.success(_firebaseAuth.currentUser));
  }

  @override
  Future<Result<void>> resetPassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);

      return Result.success(null);
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}
