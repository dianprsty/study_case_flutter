import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:study_case/core/service/go_router_service.dart';
import 'package:study_case/feature/auth/data/datasources/auth_remote_datasourse.dart';
import 'package:study_case/feature/auth/data/repositories/auth_repository_impl.dart';
import 'package:study_case/feature/auth/domain/usecase/login/login_usecase.dart';
import 'package:study_case/feature/auth/domain/usecase/logout/logout_usecase.dart';
import 'package:study_case/feature/auth/domain/usecase/register/register_usecase.dart';
import 'package:study_case/feature/auth/presentation/bloc/auth_bloc.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => AuthBloc(
                registerUsecase: RegisterUsecase(
                  authRepository: AuthRepositoryImpl(
                    authRemoteDatasourseImpl: AuthRemoteDatasourseImpl(
                      firebaseAuth: FirebaseAuth.instance,
                    ),
                  ),
                ),
                loginUsecase: LoginUsecase(
                  authRepository: AuthRepositoryImpl(
                    authRemoteDatasourseImpl: AuthRemoteDatasourseImpl(
                      firebaseAuth: FirebaseAuth.instance,
                    ),
                  ),
                ),
                logoutUsecase: LogoutUsecase(
                  authRepository: AuthRepositoryImpl(
                    authRemoteDatasourseImpl: AuthRemoteDatasourseImpl(
                      firebaseAuth: FirebaseAuth.instance,
                    ),
                  ),
                ),
              ),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routerConfig: GoRouterService.router,
      ),
    );
  }
}
