import 'dart:io';

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

  File? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Page Inventaire "),
          MaterialButton(
              color: Colors.amber,
              child: const Icon(Icons.folder),
              onPressed: () {
                _pickImage(ImageSource.gallery);
              }),
          MaterialButton(
              color: Colors.red,
              child: const Icon(Icons.camera_alt),
              onPressed: () {
                _pickImage(ImageSource.camera);
              }),
          image != null
              ? Image.file(
                  image!,
                  width: 100,
                  height: 100,
                )
              : const Text('egege'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _pickImage(ImageSource.camera);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }


  // Méthode de gestion de prise d'image
  Future _pickImage(ImageSource imgSource) async {
    final returnedimage = await ImagePicker().pickImage(source: imgSource);

    if (returnedimage == null) {
      return;
    } else {
      setState(() {
        image = File(returnedimage.path);
      });
    }
  }
}
