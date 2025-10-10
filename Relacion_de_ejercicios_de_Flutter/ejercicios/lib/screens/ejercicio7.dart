import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Ejercicio 7')),
        drawer: Drawer(child: AppDrawer()),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://static.vecteezy.com/system/resources/previews/024/699/637/non_2x/ai-generated-ai-generative-realistic-illustration-of-human-eye-oil-draw-graphic-art-photo.jpg",
              width: 200,
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/arbolrosa.png",
                  width: 200,
                  height: 200,
                ),
                Image.asset(
                  "assets/images/arbolrosa.png",
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
