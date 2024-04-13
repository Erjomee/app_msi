import 'package:app_msi/Object/item.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
        height: 100,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80, // Définir la largeur de l'image ici
                      height: 80, // Définir la hauteur de l'image ici
                      child: Image.file(
                        item.image!,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      item.product_type,
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w200),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "€ ${item.unit_price}",
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Text(
                          "- ${item.amount} +",
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class ResizableText extends StatelessWidget {
  ResizableText({Key? key, required this.text, required this.fontSize});

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text("$text", style: TextStyle(fontSize: fontSize));
  }
}
