import 'dart:io';
import 'package:app_msi/Object/item.dart';
import 'package:app_msi/pages/Inventaire/addItemForm.dart';
import 'package:app_msi/templates/ItemCard.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Inventory extends StatefulWidget {
  Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  static List<Item> inventory = [
    // Item(
    //   name: 'Pioche de bucheron',
    //   product_type: 'Product Type',
    //   image: 'Image Path',
    //   unit_price: 15.0,
    //   amount: 3,
    //   for_sale: true,
    // ),
    // Item(
    //   name: 'Champignon de steve',
    //   product_type: 'Product Type',
    //   image: 'Image Path',
    //   unit_price: 24.0,
    //   amount: 1,
    //   for_sale: true,
    // )
  ];

  File? image;

  @override
  Widget build(BuildContext context) {
    final Item? item = ModalRoute.of(context)?.settings.arguments as Item?;

    if (item != null) {
      if (!inventory.contains(item)) {
        inventory.add(item);
      }
    }

    return Scaffold(
      body: Column(children: [
        Column(
          children: inventory.map((e) => ItemCard(item: e)).toList(),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _pickImage(ImageSource.camera);
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => addItemForm(),
              ));
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
