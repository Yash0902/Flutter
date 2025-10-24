class Product {
  final int id;
  final String name;
  final double price;
  final int quantity;

  Product({required this.id, required this.name, required this.price,this.quantity = 1});

  Product copyWith({int? quantity,double? price}) {
    return Product(
      id: id,
      name: name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }
}
