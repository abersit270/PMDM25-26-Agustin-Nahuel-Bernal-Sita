import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio8 extends StatelessWidget {
  const Ejercicio8({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isMobile = size.width < 600;

    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 7')),
      drawer: Drawer(child: AppDrawer()),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(Icons.telegram, size: isMobile ? 100 : 175),
                Text('Telegram'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.face, size: isMobile ? 100 : 175),
                    Text('Carita'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.phishing, size: isMobile ? 100 : 175),
                    Text('Phishing'),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.home, size: isMobile ? 100 : 175),
                    Text('Casa'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.baby_changing_station,
                      size: isMobile ? 100 : 175,
                    ),
                    Text('Bebé'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.read_more, size: isMobile ? 100 : 175),
                    Text('Leer más'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
