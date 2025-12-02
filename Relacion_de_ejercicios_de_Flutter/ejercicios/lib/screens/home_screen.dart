import 'package:ejercicios/utils/thema_general.dart';
import 'package:flutter/material.dart';
import '../utils/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              width: double.infinity,
              height: 200,
              color: Colors.amber,
              padding: EdgeInsets.all(20),
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
            ),
          ],
        ),
      ),
    );
  }
}
