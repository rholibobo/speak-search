import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/screens/home.dart';
import 'package:speaksphere/screens/lessons.dart';
import 'package:speaksphere/screens/setup.dart';
import 'package:speaksphere/screens/splashscreens/four.dart';
import '../../screens/splashscreens/three.dart';
import '../screens/splashscreens/second.dart';
import '../screens/splashscreens/first.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const FirstSplashScreen(),
    // ),
    GoRoute(
      path: SecondSplashScreen.routeName,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const SecondSplashScreen(),
          transitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: ThirdSplashScreen.routeName,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const ThirdSplashScreen(),
          transitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: FourthSplashScreen.routeName,
      // builder: (context, state) => const FourthSplashScreen()
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const FourthSplashScreen(),
          transitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.linear).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: SetupScreen.routeName,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const SetupScreen(),
          transitionDuration: const Duration(seconds: 1),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      // path: LessonScreen.routeName,
      path: "/",
      builder: (context, state) => const LessonScreen(),
    ),
  ],
);
