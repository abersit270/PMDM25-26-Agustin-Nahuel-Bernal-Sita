import 'package:ejercicios/screens/home_screen.dart';
import 'package:ejercicios/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';

  static final Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomeScreen(),
  };
}
