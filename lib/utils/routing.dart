import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:speaksphere/screens/chats.dart';
import 'package:speaksphere/screens/exercises.dart';
import 'package:speaksphere/screens/games.dart';
import 'package:speaksphere/screens/home.dart';
import 'package:speaksphere/screens/lessons.dart';
import 'package:speaksphere/screens/setup.dart';
import 'package:speaksphere/screens/speaking.dart';
import 'package:speaksphere/screens/splashscreens/four.dart';
import 'package:speaksphere/screens/streaks.dart';
import 'package:speaksphere/widgets/bottom_navigation.dart';

class AppNavigation {
  AppNavigation._();

  static String initial = "/splash";

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHome =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _shellNavigatorLessons =
      GlobalKey<NavigatorState>(debugLabel: 'shellLessons');
  static final _shellNavigatorExercises =
      GlobalKey<NavigatorState>(debugLabel: 'shellExercises');
  static final _shellNavigatorGames =
      GlobalKey<NavigatorState>(debugLabel: 'shellGames');
  static final _shellNavigatorChats =
      GlobalKey<NavigatorState>(debugLabel: 'shellChats');

  // static const String rootPath = "/splash";
  static const String homePath = "/home";
  static const String lessonPath = "/lesson";
  static const String exercisesPath = "/exercises";
  static const String gamesPath = "/games";
  static const String chatPath = "/chat";
  static const String interestPath = "/interest";
  static const String speakingPath = "/speaking";
  static const String streaksPath = "/streaks";

  static final GoRouter router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BottomNavigationPage(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHome,
            routes: <RouteBase>[
              GoRoute(
                  path: homePath,
                  builder: (BuildContext context, GoRouterState state) =>
                      const HomeScreen())
              // const HomeScreen(key: state.pageKey,),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorLessons,
            routes: <RouteBase>[
              GoRoute(
                path: lessonPath,
                builder: (BuildContext context, GoRouterState state) =>
                    const LessonScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorExercises,
            routes: <RouteBase>[
              GoRoute(
                path: exercisesPath,
                builder: (BuildContext context, GoRouterState state) =>
                    const ExercisesScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorGames,
            routes: <RouteBase>[
              GoRoute(
                path: gamesPath,
                builder: (BuildContext context, GoRouterState state) =>
                    const GamesScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorChats,
            routes: <RouteBase>[
              GoRoute(
                path: chatPath,
                builder: (BuildContext context, GoRouterState state) =>
                    const ChatsScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: initial,
          builder: (context, GoRouterState state) =>
              const FourthSplashScreen()),
      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: interestPath,
          builder: (context, GoRouterState state) => const SetupScreen()),
      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: speakingPath,
          builder: (context, GoRouterState state) => const SpeakingScreen()),
      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: streaksPath,
          builder: (context, GoRouterState state) => const StreaksScreen()),
    ],
  );
}
