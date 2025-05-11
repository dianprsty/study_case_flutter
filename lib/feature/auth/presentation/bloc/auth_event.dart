part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = AuthEventLogin;

  const factory AuthEvent.logout() = AuthEventLogout;

  const factory AuthEvent.register({
    required String name,
    required String email,
    required String password,
  }) = AuthEventRegister;

  const factory AuthEvent.signInWithGoogle() = AuthEventSignInWithGoogle;
  const factory AuthEvent.getUser() = AuthEventGetUser;

  const factory AuthEvent.resetPassword({required String email}) =
      AuthEventResetPassword;
}
