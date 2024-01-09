import 'package:go_router/go_router.dart';
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
      builder: (context, state) => const SecondSplashScreen(),
    ),
  ],
);