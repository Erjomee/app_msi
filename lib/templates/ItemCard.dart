import 'package:app_msi/Object/item.dart';
import 'package:flutter/material.dart';


class ItemCard extends StatelessWidget {

  final Item item;
  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Row(
        children: [
          Text(item.name),
          Text(item.description),
          Text(item.product_type),
          Text(item.unit_price.toString()),
          Text(item.amount.toString()),
        ],
      ),
    );
  }
}