import 'package:flutter/material.dart';
import 'package:planner/feature/presentation/navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF0abab5)),
        useMaterial3: true,
      ),
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
