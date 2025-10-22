import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 7')),
      drawer: Drawer(child: AppDrawer()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://picsum.photos/200/150",
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/arbolrosa.png",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/arbolrosa.png",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
