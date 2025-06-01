import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import 'package:study_case/feature/auth/presentation/screen/forgot_password.dart';
import 'package:study_case/feature/auth/presentation/screen/login_screen.dart';
import 'package:study_case/feature/auth/presentation/screen/register_screen.dart';
import 'package:study_case/feature/explore/presentation/screen/explore_screen.dart';
import 'package:study_case/feature/home/domain/entities/book_model.dart';
import 'package:study_case/feature/home/presentation/screen/detail_book_screen.dart';
import 'package:study_case/feature/home/presentation/screen/home_screen.dart';
import 'package:study_case/feature/main/presentation/screen/main_screen.dart';
import 'package:study_case/feature/profile/presentation/screen/profile_screen.dart';
import 'package:study_case/feature/saved/presentation/screen/saved_screen.dart';

enum AppRoute {
  home(name: 'home', path: '/'),
  login(name: 'login', path: '/login'),
  register(name: 'register', path: '/register'),
  forgotPassword(name: 'forgot-password', path: '/forgot-password'),
  explore(name: 'explore', path: '/explore'),
  saved(name: 'saved', path: '/saved'),
  profile(name: 'profile', path: '/profile'),
  detailBook(name: 'detail-book', path: '/detail-book');

  final String name;
  final String path;

  const AppRoute({required this.name, required this.path});
}

class GoRouterService {
  static final rootKey = GlobalKey<NavigatorState>();
  static final shellRouteKey = GlobalKey<NavigatorState>();
  GoRouter router = GoRouter(
    navigatorKey: rootKey,
    initialLocation: AppRoute.login.path,
    routes: [
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
      GoRoute(
        path: AppRoute.detailBook.path,
        name: AppRoute.detailBook.name,
        builder: (context, state) {
          final book = state.extra as BookModel;
          return DetailBookScreen(book: book);
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: shellRouteKey,
            routes: [
              GoRoute(
                path: AppRoute.home.path,
                name: AppRoute.home.name,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.explore.path,
                name: AppRoute.explore.name,
                builder: (context, state) => const ExploreScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.saved.path,
                name: AppRoute.saved.name,
                builder: (context, state) => const SavedScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoute.profile.path,
                name: AppRoute.profile.name,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
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
