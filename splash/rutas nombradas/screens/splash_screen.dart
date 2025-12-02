import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      // Verificar si el widget sigue montado antes de navegar
      // Para navegar, el widget debe de seguir en el árbol
      if (mounted) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Esta pantalla se mostrará durante 5 segundos',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
