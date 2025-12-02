import 'package:ejercicios/screens/home_screen.dart';
import 'package:ejercicios/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // Definir nombres para las rutas
  static const String splash = '/';
  static const String home = '/home';

  // Mapa de rutas
  static final Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomeScreen(),
  };
}
