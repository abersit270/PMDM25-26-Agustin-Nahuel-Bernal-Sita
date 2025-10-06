import 'package:flutter/material.dart';
import '../utils/app_drawer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pagina',
      home: Scaffold(
        appBar: AppBar(title: Text('Pagina de inicio')),
        drawer: AppDrawer(),
        body: Center(
          child: Text(
            'En el menú hamburguesa puedes navegar entre los diferentes ejercicios.',
          ),
        ),
      ),
    );
  }
}
