// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item products;
  const ItemWidget({Key? key, required this.products})
      : assert(products != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        onTap: () {
          // ignore: avoid_print
          print("${products.name} pressed");
        },
        leading: Image.network(products.image),
        title: Text(products.name),
        subtitle: Text(products.desc),
        trailing: Text(
          "\$${products.price}",
          textScaleFactor: 1.3,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
