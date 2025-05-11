import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import 'package:study_case/feature/auth/presentation/screen/forgot_password.dart';
import 'package:study_case/feature/auth/presentation/screen/login_screen.dart';
import 'package:study_case/feature/auth/presentation/screen/register_screen.dart';
import 'package:study_case/feature/home/presentation/screen/home_screen.dart';

enum AppRoute {
  home(name: 'home', path: '/'),
  login(name: 'login', path: '/login'),
  register(name: 'register', path: '/register'),
  forgotPassword(name: 'forgot-password', path: '/forgot-password');

  final String name;
  final String path;

  const AppRoute({required this.name, required this.path});
}

class GoRouterService {
  GoRouter router = GoRouter(
    initialLocation: AppRoute.login.path,
    routes: [
      GoRoute(
        path: AppRoute.home.path,
        name: AppRoute.home.name,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoute.login.path,
        name: AppRoute.login.name,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoute.register.path,
        name: AppRoute.register.name,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoute.forgotPassword.path,
        name: AppRoute.forgotPassword.name,
        builder: (context, state) => const ForgotPassword(),
      ),
    ],
    redirect: (context, state) {
      final user = FirebaseAuth.instance.currentUser;

      final route = state.matchedLocation;
      bool isLoggedIn = (user != null) && (user.emailVerified == true);

      if (!isLoggedIn &&
          route != AppRoute.login.path &&
          route != AppRoute.register.path &&
          route != AppRoute.forgotPassword.path) {
        return AppRoute.login.path;
      }

      if (isLoggedIn &&
          (route == AppRoute.login.path ||
              route == AppRoute.register.path ||
              route == AppRoute.forgotPassword.path)) {
        return AppRoute.home.path;
      }

      return state.path;
    },
  );
}
