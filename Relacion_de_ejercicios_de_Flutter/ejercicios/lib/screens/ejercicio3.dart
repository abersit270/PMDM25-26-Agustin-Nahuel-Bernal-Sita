import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 3')),
      drawer: Drawer(child: AppDrawer()),
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/perro.webp'), width: 150),
            Image(image: AssetImage('assets/images/flor.webp'), width: 150),
            Image(image: AssetImage('assets/images/arbolrosa.png'), width: 150),
          ],
        ),
      ),
    );
  }
}
