import 'package:ejercicios/screens/screens.dart';
import 'package:flutter/material.dart';

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
          ListTile(
            leading: Text(
              "4",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 4'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio4()),
              );
            },
          ),
          ListTile(
            leading: Text(
              "5",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 5'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio5()),
              );
            },
          ),
          ListTile(
            leading: Text(
              "6",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 6'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio6()),
              );
            },
          ),
          ListTile(
            leading: Text(
              "7",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 7'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio7()),
              );
            },
          ),
          ListTile(
            leading: Text(
              "8",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 8'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio8()),
              );
            },
          ),
          ListTile(
            leading: Text(
              "9",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 9'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio9()),
              );
            },
          ),
          ListTile(
            leading: Text(
              "10",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 10'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio10()),
              );
            },
          ),
          ListTile(
            leading: Text(
              "11",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 11'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio11()),
              );
            },
          ),
          ListTile(
            leading: Text(
              "12",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 12'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio12()),
              );
            },
          ),
          ListTile(
            leading: Text(
              "13",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            title: Text('Ejercicio 13'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio13()),
              );
            },
          ),
        ],
      ),
    );
  }
}
