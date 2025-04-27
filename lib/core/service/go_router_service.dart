import 'package:go_router/go_router.dart';

import 'package:study_case/feature/auth/presentation/screen/login_screen.dart';
import 'package:study_case/feature/auth/presentation/screen/register_screen.dart';
import 'package:study_case/feature/home/presentation/screen/home_screen.dart';

enum AppRoute {
  home(name: 'home', path: '/'),
  login(name: 'login', path: '/login'),
  register(name: 'register', path: '/register');

  final String name;
  final String path;

  const AppRoute({required this.name, required this.path});
}

class GoRouterService {
  static GoRouter router = GoRouter(
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
    ],
  );
}
