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

class CustomNavigationHelper {
  static final CustomNavigationHelper _instance =
      CustomNavigationHelper._internal();

  static CustomNavigationHelper get instance => _instance;

  static late final GoRouter router;

  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> homeTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> lessonTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> exercisesTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> gamesTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> chatTabNavigatorKey =
      GlobalKey<NavigatorState>();

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;

  static const String rootPath = "/splash";
  static const String homePath = "/home";
  static const String lessonPath = "/lesson";
  static const String exercisesPath = "/exercises";
  static const String gamesPath = "/games";
  static const String chatPath = "/chat";
  static const String interestPath = "/interest";
  static const String speakingPath = "/speaking";
  static const String streaksPath = "/streaks";

  factory CustomNavigationHelper() {
    return _instance;
  }

  CustomNavigationHelper._internal() {
    final routes = [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: parentNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: homeTabNavigatorKey,
            routes: [
              GoRoute(
                path: homePath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const HomeScreen(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: homeTabNavigatorKey,
            routes: [
              GoRoute(
                path: homePath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(child: const HomeScreen(), state: state);
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: lessonTabNavigatorKey,
            routes: [
              GoRoute(
                path: lessonPath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(child: const LessonScreen(), state: state);
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: exercisesTabNavigatorKey,
            routes: [
              GoRoute(
                path: exercisesPath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(child: const ExercisesScreen(), state: state);
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: gamesTabNavigatorKey,
            routes: [
              GoRoute(
                path: gamesPath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(child: const GamesScreen(), state: state);
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: chatTabNavigatorKey,
            routes: [
              GoRoute(
                path: chatPath,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(child: const ChatsScreen(), state: state);
                },
              ),
            ],
          ),
        ],
        pageBuilder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return getPage(
            child: BottomNavigationPage(
              navigationShell: navigationShell,
            ),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: parentNavigatorKey,
        path: rootPath,
        pageBuilder: (context, state) {
          return getPage(
            child: const FourthSplashScreen(),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: parentNavigatorKey,
        path: interestPath,
        pageBuilder: (context, state) {
          return getPage(
            child: const SetupScreen(),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: parentNavigatorKey,
        path: speakingPath,
        pageBuilder: (context, state) {
          return getPage(
            child: const SpeakingScreen(),
            state: state,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: parentNavigatorKey,
        path: streaksPath,
        pageBuilder: (context, state) {
          return getPage(
            child: const StreaksScreen(),
            state: state,
          );
        },
      ),
    ];

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: "/splash",
      routes: routes,
    );
  }
  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
    );
  }
}
