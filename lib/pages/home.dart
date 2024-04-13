import 'package:app_msi/Object/item.dart';
import 'package:app_msi/templates/CustomScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> inventory = [];

  @override
  Widget build(BuildContext context) {
    // debugPrint(ModalRoute.of(context)?.settings.arguments.toString());
    // debugPrint(ModalRoute.of(context)?.settings.arguments.toString());

    return const MyScaffold(
        isconnected: true,
        hasDrawer: true,
        body: Text("Home page"),
        title: "MSI App");
  }
}
