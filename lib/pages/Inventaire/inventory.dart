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

  File ? image ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        const Text("Page Inventaire "),

        MaterialButton(color: Colors.amber , child: Text("efeeg"),onPressed: () {
          _pickImage();
        }),

        image != null ? Image.file(image!, width: 50, height: 50,) : const Text('egege'),
      ],
    ));
  }

  Future _pickImage() async{
   final returnedimage = await ImagePicker().pickImage(source:ImageSource.camera);

   setState(() {
     image = File(returnedimage!.path);
   });
  }
}
