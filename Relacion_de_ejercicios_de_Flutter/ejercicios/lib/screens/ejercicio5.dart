import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 5')),
      drawer: Drawer(child: AppDrawer()),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Image(
              image: AssetImage('assets/images/perro.webp'),
              width: 120,
              height: 120,
            ),
            Image(
              image: AssetImage('assets/images/arbolrosa.png'),
              width: 120,
              height: 120,
            ),
            Image(
              image: AssetImage('assets/images/paisaje.png'),
              width: 120,
              height: 120,
            ),
            Image(
              image: AssetImage('assets/images/pajaro.png'),
              width: 120,
              height: 120,
            ),
            Image(
              image: AssetImage('assets/images/flor.webp'),
              width: 120,
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
