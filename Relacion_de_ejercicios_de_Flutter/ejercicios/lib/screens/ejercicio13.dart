import 'dart:async';
import 'dart:math';

import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio13 extends StatefulWidget {
  const Ejercicio13({super.key});

  @override
  State<Ejercicio13> createState() => _RandomColors();
}

class _RandomColors extends State<Ejercicio13> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  var colorNames = ['azul', 'verde', 'naranja'];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
  ];

  double top = 150;
  double left = 50;
  final double containerSize = 120;
  final double textHeight = 50;
  final double paddingTopScore = 80;

  final Random _random = Random();

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    startTimer();
  }

  void dispose() {
    // Cancela el temporizador para evitar que llame a setState
    // después de que el widget ha sido eliminado.
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    // Almacena la instancia del Timer en la variable _timer
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // Es una buena práctica verificar 'mounted' aquí también,
      // aunque 'dispose' debería manejarlo.
      if (mounted) {
        moveContainerRandom();
      }
    });
  }

  void moveContainerRandom() {
    final Size screenSize = MediaQuery.of(context).size;

    setState(() {
      // Altura total del widget (container + espacio + texto)
      double totalHeight =
          containerSize + 10 + 40; // 10 = SizedBox, 40 = fontSize aproximado

      top =
          paddingTopScore +
          _random.nextDouble() *
              (screenSize.height - totalHeight - paddingTopScore - 20);
      left = _random.nextDouble() * (screenSize.width - containerSize - 20);

      // Cambia color y nombre
      getRandomColor();
      getRandomName();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: AppDrawer()),
      appBar: AppBar(title: const Text('Ejercicio 13')),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Puntaje arriba izquierda
          Positioned(
            top: 10,
            left: 10,
            child: Text(
              'Puntos: $points',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: top,
            left: left,
            child: GestureDetector(
              onTap: () {
                onGiftTap(randomName, randomColor);
              },
              child: Column(
                children: [
                  Container(
                    width: containerSize,
                    height: containerSize,
                    decoration: BoxDecoration(
                      color: randomColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    randomName,
                    style: TextStyle(
                      color: randomColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void getRandomColor() {
    int randomNumber = _random.nextInt(3);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    int randomNumber = _random.nextInt(3);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'verde';
    } else {
      return 'naranja';
    }
  }

  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }
    setState(() {});
  }
}
