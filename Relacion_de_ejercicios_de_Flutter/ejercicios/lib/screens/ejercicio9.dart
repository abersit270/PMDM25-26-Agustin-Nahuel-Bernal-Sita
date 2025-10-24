import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio9 extends StatelessWidget {
  const Ejercicio9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 9')),
      drawer: Drawer(child: AppDrawer()),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.orange, width: 10),
              ),
              width: 250,
              height: 250,
              child: Text(
                "H",
                style: TextStyle(color: Colors.orange, fontSize: 175),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
