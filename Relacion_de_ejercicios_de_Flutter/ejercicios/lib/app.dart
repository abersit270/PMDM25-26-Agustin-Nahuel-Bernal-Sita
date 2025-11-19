import 'package:ejercicios/routes/app_routes.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pagina',
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}
