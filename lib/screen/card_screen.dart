import 'package:container_widget/bloc/card/card_bloc.dart';
import 'package:container_widget/bloc/card/card_event.dart';
import 'package:container_widget/bloc/card/card_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Cart")),
      body: BlocBuilder<CardBloc, CardState>(
        builder: (context, state) {
          if (state.carditems.isEmpty) {
            return const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  Icon(Icons.shopping_cart),
                  Text("Cart Is Empty", style: const TextStyle(fontSize: 20)),
                ],
              ),
            );
          }
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.carditems.length,
                  itemBuilder: (context, index){
                    final product = state.carditems[index];
                    return ListTile(
                      title: Text(product.name),
                      subtitle:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 1,
                         children: [
                           Text("₹${product.price}"),
                           Text("Quantity:-${product.quantity}",style: TextStyle(
                                 fontSize:10,
                           ),),
                         ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          context.read<CardBloc>().add(RemoveFromCard(product));
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Total: ₹${state.totalPrice.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
