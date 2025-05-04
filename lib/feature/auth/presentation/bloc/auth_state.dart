part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  factory AuthState({
    @Default(GeneralState.initial()) GeneralState? status,
    UserModel? user,
    String? errorMessage,
  }) = _AuthState;
}
