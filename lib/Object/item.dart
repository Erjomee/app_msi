import 'dart:io';

class Item {
  final String name;
  final String product_type;
  // final String image;
  final File? image;
  final String unit_price;
  final String amount;
  final bool for_sale;

  Item(
      {required this.name,
      required this.product_type,
      required this.image,
      required this.unit_price,
      required this.amount,
      required this.for_sale});
}
