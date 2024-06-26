import 'package:app_msi/pages/Login&Register/login.dart';
import 'package:app_msi/pages/Login&Register/register.dart';
import 'package:app_msi/pages/Achat/buying.dart';
import 'package:app_msi/pages/home.dart';
import 'package:app_msi/pages/Inventaire/inventory.dart';
import 'package:app_msi/pages/Vente/selling.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Login(),
      '/home': (context) => HomePage(),
      '/login': (context) => Login(),
      '/register': (context) => Register(),
      '/inventory': (context) => Inventory(),
      '/buying': (context) => Buying(),
      '/selling': (context) => Selling(),
    },
  ));
}
