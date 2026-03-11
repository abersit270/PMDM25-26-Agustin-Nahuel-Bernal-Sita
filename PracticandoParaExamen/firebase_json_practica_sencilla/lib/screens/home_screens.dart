import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home_Screens extends StatefulWidget {
  const Home_Screens({super.key});

  @override
  State<Home_Screens> createState() => _Home_ScreensState();
}

class _Home_ScreensState extends State<Home_Screens> {
  var tareas = [];
  @override
  void initState() {
    getJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tareas.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: ListView.builder(
                itemCount: tareas.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tareas[index]["titulo"]),
                    subtitle: Column(
                      children: [
                        Text("ID: ${tareas[index]["id"]}"),
                        Text(
                          "Completada: ${tareas[index]["completada"] ? "Sí" : "No"}",
                          style: TextStyle(
                            color: tareas[index]["completada"]
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }

  Future<void> getJson() async {
    String contenidoJson = await rootBundle.loadString(
      "assets/json/tareas.json",
    );

    final listaDecodificada = jsonDecode(contenidoJson);

    setState(() {
      tareas = listaDecodificada;
    });
  }
}
