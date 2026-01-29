import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BreakFast",
          style: TextStyle(
            color: const Color.fromARGB(255, 208, 228, 244),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 107, 103, 103),
        elevation: 2.0,
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.arrow_back),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.control_point),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.cyan, blurRadius: 20)],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Field",
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 161, 153, 153),
                ),
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: const Color.fromARGB(255, 225, 210, 210),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
