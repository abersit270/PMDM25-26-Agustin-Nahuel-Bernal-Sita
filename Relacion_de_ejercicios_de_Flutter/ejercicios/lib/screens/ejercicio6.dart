import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Ejercicio6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ejercicio 6')),
        drawer: Drawer(child: AppDrawer()),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.25,
              color: const Color.fromARGB(255, 120, 161, 194),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(8),
                child: Text(
                  List.filled(
                    100,
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  ).join(' '),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.25,
              color: const Color.fromARGB(255, 193, 113, 113),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(8),
                child: Text(
                  List.filled(
                    100,
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  ).join(' '),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.25,
              color: const Color.fromARGB(255, 155, 211, 155),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(8),
                child: Text(
                  List.filled(
                    100,
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  ).join(' '),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
