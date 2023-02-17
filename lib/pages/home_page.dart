// ignore_for_file: prefer_const_constructors,

import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/catalog.dart';
import 'package:flutter_application_2/widgets/drawer.dart';

import '../widgets/items_widget.dart';

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
      body: ListView.builder(
          padding: EdgeInsets.fromLTRB(10, 14, 10, 0),
          itemCount: CatalogModel.products.length,
          itemBuilder: ((context, index) {
            return ItemWidget(
              products: CatalogModel.products[index],
            );
          })),
      drawer: MyDrawer(),
    );
  }
}
