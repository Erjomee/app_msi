import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Selling extends StatelessWidget {
  Selling({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Page Vente"));
  }
}
