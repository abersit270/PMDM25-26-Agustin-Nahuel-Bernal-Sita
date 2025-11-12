import 'package:ejercicios/utils/thema_general.dart';
import 'package:flutter/material.dart';
import '../utils/app_drawer.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDarkTheme ? TemaOscuro.temaoscuro : TemaClaro.temaclaro,
      title: 'Pagina',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pagina de inicio'),
          actions: [
            Switch(
              value: _isDarkTheme,
              onChanged: (value) {
                setState(() {
                  _isDarkTheme = value;
                });
              },
            ),
          ],
        ),
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
