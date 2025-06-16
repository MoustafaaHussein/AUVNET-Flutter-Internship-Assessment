import 'package:auvnet_ecommerce/features/authentication/presentation/views/login_view.dart';
import 'package:auvnet_ecommerce/features/authentication/presentation/views/register_view.dart';
import 'package:auvnet_ecommerce/features/onboarding/presentation/views/onboard_view.dart';
import 'package:auvnet_ecommerce/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kOnBoardView = '/onboard';
  static const String kLoginView = '/login';
  static const String kRegisterView = '/register';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnBoardView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const OnboardView(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: kLoginView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const LoginView(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: kRegisterView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const RegisterView(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return FadeTransition(opacity: animation, child: child);
            },
          );
        },
      ),
    ],
  );
}
