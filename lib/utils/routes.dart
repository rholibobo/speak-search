import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/screens/splashscreens/four.dart';
import '../../screens/splashscreens/three.dart';
import '../screens/splashscreens/second.dart';
import '../screens/splashscreens/first.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const FirstSplashScreen(),
    ),
    GoRoute(
      path: SecondSplashScreen.routeName,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const SecondSplashScreen(),
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
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const FourthSplashScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurveTween(curve: Curves.easeInCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
  ],
);
