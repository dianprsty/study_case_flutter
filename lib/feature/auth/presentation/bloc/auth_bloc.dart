import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:study_case/core/model/general_state.dart';
import 'package:study_case/feature/auth/domain/entities/user_model.dart';
import 'package:study_case/feature/auth/domain/usecase/login/login_param.dart';
import 'package:study_case/feature/auth/domain/usecase/login/login_usecase.dart';
import 'package:study_case/feature/auth/domain/usecase/logout/logout_usecase.dart';
import 'package:study_case/feature/auth/domain/usecase/register/register_param.dart';
import 'package:study_case/feature/auth/domain/usecase/register/register_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RegisterUsecase registerUsecase;
  final LoginUsecase loginUsecase;
  final LogoutUsecase logoutUsecase;

  AuthBloc({
    required this.registerUsecase,
    required this.loginUsecase,
    required this.logoutUsecase,
  }) : super(AuthState()) {
    on<AuthEventLogin>(_login);
    on<AuthEventLogout>(_logout);
    on<AuthEventRegister>(_register);
  }

  void _login(AuthEventLogin event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: GeneralState.loading()));
    try {
      final result = await loginUsecase.call(
        LoginParam(email: event.email, password: event.password),
      );
      if (result.isSuccess) {
        emit(
          state.copyWith(status: GeneralState.success(), user: result.value),
        );
      } else {
        emit(
          state.copyWith(
            status: GeneralState.error(),
            errorMessage: result.errorMessage,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: GeneralState.error(),
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void _logout(AuthEventLogout event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: GeneralState.loading()));
    try {
      final result = await logoutUsecase.call(null);
      if (result.isSuccess) {
        emit(state.copyWith(status: GeneralState.success()));
      } else {
        emit(
          state.copyWith(
            status: GeneralState.error(),
            errorMessage: result.errorMessage,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: GeneralState.error(),
          errorMessage: e.toString(),
        ),
      );
    }
  }

  void _register(AuthEventRegister event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: GeneralState.loading()));
    try {
      final result = await registerUsecase.call(
        RegisterParam(
          email: event.email,
          password: event.password,
          name: event.name,
        ),
      );

      if (result.isSuccess) {
        emit(state.copyWith(status: GeneralState.success()));
      } else {
        emit(
          state.copyWith(
            status: GeneralState.error(),
            errorMessage: result.errorMessage,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: GeneralState.error(),
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
