import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'package:study_case/core/service/api_service.dart';
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
import 'package:study_case/feature/home/data/datasource/book_remote_datasource.dart';
import 'package:study_case/feature/home/data/repository/book_repository_impl.dart';
import 'package:study_case/feature/home/domain/repository/book_repository.dart';
import 'package:study_case/feature/home/domain/usecase/get_book_by_category_usecase.dart';
import 'package:study_case/feature/home/domain/usecase/get_genre_usecase.dart';
import 'package:study_case/feature/home/presentation/bloc/book_bloc.dart';
import 'package:study_case/feature/home/presentation/bloc/genre_bloc.dart';

final getIt = GetIt.instance;

void setup() {
  // Service
  getIt.registerLazySingleton<GoRouterService>(() => GoRouterService());
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<ApiService>(() => ApiService());

  // Datasource
  getIt.registerLazySingleton<IAuthRemoteDataSourse>(
    () => AuthRemoteDatasourseImpl(firebaseAuth: getIt()),
  );
  getIt.registerLazySingleton<IBookRemoteDatasource>(
    () => BookRemoteDatasourceImpl(apiService: getIt()),
  );

  // Repository
  getIt.registerLazySingleton<IAuthRepository>(
    () => AuthRepositoryImpl(authRemoteDatasourseImpl: getIt()),
  );
  getIt.registerLazySingleton<IBookRepository>(
    () => BookRepositoryImpl(bookRemoteDatasource: getIt()),
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
  getIt.registerLazySingleton<GetBookByCategoryUsecase>(
    () => GetBookByCategoryUsecase(bookRepository: getIt()),
  );

  getIt.registerLazySingleton<GetGenreUsecase>(
    () => GetGenreUsecase(bookRepository: getIt()),
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
  getIt.registerLazySingleton<BookBloc>(
    () => BookBloc(bookRepository: getIt()),
  );

  getIt.registerLazySingleton<GenreBloc>(
    () => GenreBloc(getGenreUsecase: getIt()),
  );
}
