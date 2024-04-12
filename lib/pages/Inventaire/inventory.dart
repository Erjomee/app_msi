import 'dart:collection';
import 'dart:io';

import 'package:app_msi/Object/item.dart';
import 'package:app_msi/pages/Inventaire/addItemForm.dart';
import 'package:app_msi/pages/home.dart';
import 'package:app_msi/templates/ItemCard.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class Inventory extends StatefulWidget {
  Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<Item> inventory = [
    Item(
      name: 'Item Name',
      description: 'Item Description',
      product_type: 'Product Type',
      image: 'Image Path',
      unit_price: 1.0,
      amount: 1,
      for_sale: true,
    ),
    Item(
      name: 'Item 2',
      description: 'Item Description',
      product_type: 'Product Type',
      image: 'Image Path',
      unit_price: 1.0,
      amount: 1,
      for_sale: true,
    )
  ];

  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text(
          "Inventaire",
          style: TextStyle(
              color: Colors.blue, 
              fontSize: 34, 
              fontWeight: FontWeight.bold,
              ),
        ),
        Column(
          children: inventory.map((e) => ItemCard(item: e)).toList(),
        ),
        
        
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _pickImage(ImageSource.camera);
          Navigator.push(context, MaterialPageRoute(builder: (context) => addItemForm(),));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }

  
}
