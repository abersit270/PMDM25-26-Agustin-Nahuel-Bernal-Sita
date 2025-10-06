import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 2')),
      drawer: Drawer(child: AppDrawer()),
      body: Column(
        children: [
          Image.asset('assets/images/perro.webp'),
          Text("Agustín Nahuel Bernal Sita", style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}
