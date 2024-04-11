import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Inventory extends StatelessWidget {
  Inventory({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Page inventaire"));
  }
}
