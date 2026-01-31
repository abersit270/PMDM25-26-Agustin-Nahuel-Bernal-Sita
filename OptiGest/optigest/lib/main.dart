import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/paciente_screen.dart';
import 'screens/refraccion_screen.dart';
import 'screens/listado_screen.dart';

void main() => runApp(const OptiGestApp());

class OptiGestApp extends StatelessWidget {
  const OptiGestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OptiGest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      // Ruta inicial
      initialRoute: '/',
      // Mapa de rutas
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/registro': (context) => const PacienteScreen(),
        '/refraccion': (context) => const RefraccionScreen(),
        '/historial': (context) => const ListadoScreen(),
      },
    );
  }
}