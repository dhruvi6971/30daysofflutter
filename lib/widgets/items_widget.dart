// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatefulWidget {
  final Item items;
  const ItemWidget({Key? key, required this.items})
      : assert(items != null),
        super(key: key);

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        onTap: () {
          // ignore: avoid_print
          print("${widget.items.name} pressed");
        },
        leading: Image.network(widget.items.image),
        title: Text(widget.items.name),
        subtitle: Text(widget.items.desc),
        trailing: Text(
          "\$${widget.items.price}",
          textScaleFactor: 1.3,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
