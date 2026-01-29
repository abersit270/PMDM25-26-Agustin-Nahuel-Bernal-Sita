import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const OptiGestApp());
}

class OptiGestApp extends StatelessWidget {
  const OptiGestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OptiGest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true, // Habilitamos Material 3 para que sea más moderno
      ),
      home: const SplashScreen(), // Iniciamos con el Splash
    );
  }
}
