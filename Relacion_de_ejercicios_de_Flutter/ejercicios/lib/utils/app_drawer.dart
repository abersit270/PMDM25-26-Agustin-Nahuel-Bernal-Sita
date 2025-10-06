import 'package:ejercicios/screens/ejercicio1.dart';
import 'package:ejercicios/screens/ejercicio2.dart';
import 'package:ejercicios/screens/ejercicio3.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menú de navegación',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          // Inicio
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () {
              Navigator.pop(context); // cierra Drawer
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
          // Ejercicio 1
          ListTile(
            leading: Text(
              "1",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 1'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio1()),
              );
            },
          ),
          // Ejercicio 2
          ListTile(
            leading: Text(
              "2",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 2'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio2()),
              );
            },
          ),
          // Ejercicio 3
          ListTile(
            leading: Text(
              "3",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 3'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio3()),
              );
            },
          ),
        ],
      ),
    );
  }
}
