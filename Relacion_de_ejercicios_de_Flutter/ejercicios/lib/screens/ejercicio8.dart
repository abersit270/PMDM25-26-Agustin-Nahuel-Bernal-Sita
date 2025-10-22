import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio8 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 7')),
      drawer: Drawer(child: AppDrawer()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.abc),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.home), Icon(Icons.phone)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.help_outline),
              Icon(Icons.alarm),
              Icon(Icons.holiday_village),
            ],
          ),
        ],
      ),
    );
  }
}
