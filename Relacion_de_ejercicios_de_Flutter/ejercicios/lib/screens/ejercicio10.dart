import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio10 extends StatefulWidget {
  const Ejercicio10({super.key});

  @override
  State<Ejercicio10> createState() => _Ejercicio10State();
}

class _Ejercicio10State extends State<Ejercicio10> {
  int _counter = 0;

  void incrementar() {
    setState(() {
      _counter++;
    });
  }

  void decrementar() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicio 10')),
      drawer: Drawer(child: AppDrawer()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_counter',
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: incrementar,
                child: const Text('Incrementar'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: decrementar,
                child: const Text('Decrementar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
