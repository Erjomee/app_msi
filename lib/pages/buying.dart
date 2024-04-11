import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buying extends StatelessWidget {
  Buying({super.key});

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Page Achat"));
  }
}
