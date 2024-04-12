import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';

class Item {
  final String name;
  final String description;
  final String product_type;
  final File image;
  final Float unit_price;
  final int amount;
  final bool for_sale;

  Item(
      {required this.name,
      required this.description,
      required this.product_type,
      required this.image,
      required this.unit_price,
      required this.amount,
      required this.for_sale});


}
