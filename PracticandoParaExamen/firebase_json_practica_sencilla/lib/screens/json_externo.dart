import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JsonExterno extends StatefulWidget {
  const JsonExterno({super.key});

  @override
  State<JsonExterno> createState() => _JsonExternoState();
}

class _JsonExternoState extends State<JsonExterno> {
  var personajes = [];
  @override
  void initState() {
    super.initState();
    getJsonExterno();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personajes Naruto", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
      ),
      body: personajes.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: ListView.builder(
                itemCount: personajes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${personajes[index]["name"]}"),
                    subtitle: Image.network(
                      "${personajes[index]["images"][0]}",
                      width: 150,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
    );
  }

  Future<void> getJsonExterno() async {
    String url = "https://dattebayo-api.onrender.com/akatsuki";

    try {
      final response = await http.get(Uri.parse(url));

      final Map<String, dynamic> mapaCodificado = jsonDecode(response.body);

      setState(() {
        personajes = mapaCodificado["akatsuki"];
      });
    } catch (e) {
      print("Error al buscar la url $e");
    }
  }
}
