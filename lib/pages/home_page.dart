// ignore_for_file: prefer_const_constructors,

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text("Welcome to 30 days of flutter"),
      ),
      drawer: MyDrawer(),
    );
  }
}
