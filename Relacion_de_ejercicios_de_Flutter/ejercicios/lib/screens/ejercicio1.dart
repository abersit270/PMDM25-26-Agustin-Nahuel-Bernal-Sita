import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 1')),
      drawer: Drawer(child: AppDrawer()),
      body: Column(
        children: [
          Text(
            'Nombre: Agustín Nahuel Bernal Sita',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            'Dirección del repositorio: TODO',
            style: TextStyle(fontSize: 30, fontFamily: "Courier New"),
          ),
        ],
      ),
    );
  }
}
