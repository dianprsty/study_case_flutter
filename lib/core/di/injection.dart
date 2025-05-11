import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'package:study_case/core/service/go_router_service.dart';
import 'package:study_case/feature/auth/data/datasources/auth_remote_datasourse.dart';
import 'package:study_case/feature/auth/data/repositories/auth_repository_impl.dart';
import 'package:study_case/feature/auth/domain/repositories/i_auth_repository.dart';
import 'package:study_case/feature/auth/domain/usecase/get_user/get_user_usecase.dart';
import 'package:study_case/feature/auth/domain/usecase/login/login_usecase.dart';
import 'package:study_case/feature/auth/domain/usecase/logout/logout_usecase.dart';
import 'package:study_case/feature/auth/domain/usecase/register/register_usecase.dart';
import 'package:study_case/feature/auth/domain/usecase/reset_password/reset_password_usecase.dart';
import 'package:study_case/feature/auth/domain/usecase/sign_in_google/sign_in_google_usecase.dart';
import 'package:study_case/feature/auth/presentation/bloc/auth_bloc.dart';

final getIt = GetIt.instance;

void setup() {
  // Service
  getIt.registerLazySingleton<GoRouterService>(() => GoRouterService());
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  // Datasource
  getIt.registerLazySingleton<IAuthRemoteDataSourse>(
    () => AuthRemoteDatasourseImpl(firebaseAuth: getIt()),
  );

  // Repository
  getIt.registerLazySingleton<IAuthRepository>(
    () => AuthRepositoryImpl(authRemoteDatasourseImpl: getIt()),
  );

  // UseCase
  getIt.registerLazySingleton<LoginUsecase>(
    () => LoginUsecase(authRepository: getIt()),
  );
  getIt.registerLazySingleton<RegisterUsecase>(
    () => RegisterUsecase(authRepository: getIt()),
  );
  getIt.registerLazySingleton<LogoutUsecase>(
    () => LogoutUsecase(authRepository: getIt()),
  );
  getIt.registerLazySingleton<SignInGoogleUsecase>(
    () => SignInGoogleUsecase(authRepository: getIt()),
  );
  getIt.registerLazySingleton<GetUserUsecase>(
    () => GetUserUsecase(authRepository: getIt()),
  );
  getIt.registerLazySingleton<ResetPasswordUsecase>(
    () => ResetPasswordUsecase(authRepository: getIt()),
  );

  // Bloc
  getIt.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      loginUsecase: getIt(),
      registerUsecase: getIt(),
      logoutUsecase: getIt(),
      signInGoogleUsecase: getIt(),
      getUserUsecase: getIt(),
      resetPasswordUsecase: getIt(),
    ),
  );
}
