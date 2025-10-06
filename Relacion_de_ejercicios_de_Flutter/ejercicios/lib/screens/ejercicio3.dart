import 'package:flutter/material.dart';
import 'package:holamundo/utils/app_drawer.dart';

class Ejercicio3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 3')),
      drawer: Drawer(child: AppDrawer()),
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('assets/images/perro.webp')),
            Image(image: AssetImage('assets/images/flor.webp')),
            Image(image: AssetImage('assets/images/arbolrosa.png')),
          ],
        ),
      ),
    );
  }
}
