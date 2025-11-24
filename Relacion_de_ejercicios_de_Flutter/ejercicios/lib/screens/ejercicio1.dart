import 'package:ejercicios/utils/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Ejercicio1 extends StatelessWidget {
  final Uri _repoUrl = Uri.parse(
    "https://github.com/abersit270/PMDM25-26-Agustin-Nahuel-Bernal-Sita.git",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ejercicio 1')),
      drawer: Drawer(child: AppDrawer()),
      body: Column(
        children: [
          Text(
            "Mi nombre es Agustín Nahuel Bernal y estoy aprendiendo flutter",
            style: TextStyle(fontSize: 20, fontFamily: "Courier New"),
          ),
          InkWell(
            onTap: () async {
              if (await canLaunchUrl(_repoUrl)) {
                await launchUrl(_repoUrl, mode: LaunchMode.externalApplication);
              }
            },
            child: Text(
              'Repositorio en GitHub',
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Courier New",
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
