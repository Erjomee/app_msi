import 'package:app_msi/pages/buying.dart';
import 'package:app_msi/pages/inventory.dart';
import 'package:app_msi/pages/selling.dart';
import 'package:flutter/material.dart';

class MyScaffold extends StatefulWidget {
  final Widget body;
  final bool hasDrawer;
  final String title;
  final bool isconnected;

  const MyScaffold(
      {super.key,
      required this.body,
      required this.hasDrawer,
      required this.title,
      required this.isconnected});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    Inventory(),
    Buying(),
    Selling(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Scaffold(
        drawer: widget.hasDrawer
            ? const Drawer(
                child: Text("data"),
              )
            : null,
        appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue,
          elevation: 0,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: IconButton(
                onPressed: () {
                  print("user icon pressed");
                },
                icon: const Icon(Icons.person),
                color: Colors.black,
                iconSize: 30,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: widget.isconnected
              ? _widgetOptions.elementAt(_selectedIndex)
              : widget.body,
        ),
        bottomNavigationBar: widget.isconnected
            ? BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.inventory,
                      ),
                      label: 'Inventaire'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.shopping_cart,
                      ),
                      label: 'Achat'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.sell_rounded,
                      ),
                      label: 'Vente'),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.blue,
                onTap: _onItemTapped,
              )
            : null,
      ),
    );
  }
}
