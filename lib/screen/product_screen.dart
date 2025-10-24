import 'package:container_widget/Models/product_model.dart';
import 'package:container_widget/bloc/card/card_bloc.dart';
import 'package:container_widget/bloc/card/card_event.dart';
import 'package:container_widget/screen/card_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  final List<Product> products = [
    Product(id: 1, name: "Laptop", price: 85000),
    Product(id: 2, name: "Headphones", price: 2000),
    Product(id: 3, name: "Mouse", price: 1200),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test AppBar"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: ListTile(
              title: Text(product.name),
              subtitle: Text("₹${product.price.toStringAsFixed(2)}"),
              trailing: ElevatedButton(
                onPressed: () {
                  context.read<CardBloc>().add(AddToCard(product));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${product.name} added to cart")),
                  );
                },
                child: const Text("Add"),
              ),
            ),
          );
        },
      ),
    );
  }
}
