import 'package:flutter/material.dart';
import 'package:planner/feature/presentation/navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planner',
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
