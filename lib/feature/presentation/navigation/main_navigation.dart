import 'package:flutter/material.dart';
import 'package:planner/feature/presentation/screens/home_screen.dart';
import 'package:planner/feature/presentation/widgets/splash_screen.dart';

abstract class MainNavigationRouteNames {
  static const splashScreen = '/';
  static const homeScreen = '/home';
}

class MainNavigation {
  final initialRoute = MainNavigationRouteNames.splashScreen;
  final routes = <String, Widget Function(dynamic)>{
    MainNavigationRouteNames.splashScreen: (context) => const SplashScreen(),
    MainNavigationRouteNames.homeScreen: (context) => const HomeScreen()
  };
}
