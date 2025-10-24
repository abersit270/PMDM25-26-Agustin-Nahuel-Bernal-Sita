import 'package:flutter/material.dart';
import '../utils/app_drawer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pagina',
      home: Scaffold(
        appBar: AppBar(title: Text('Pagina de inicio')),
        drawer: AppDrawer(),
        body: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Text(
                      'En el menú hamburguesa puedes navegar entre los diferentes ejercicios.',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.info_outline_rounded),
                ],
              ),
              width: double.infinity,
              height: 200,
              color: Colors.amber,
              padding: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
    );
  }
}
