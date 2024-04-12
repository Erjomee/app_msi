class Item {
  final String name;
  final String description;
  final String product_type;
  final String image;
  final double unit_price;
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
