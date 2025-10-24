import 'package:bloc/bloc.dart';
import 'package:container_widget/Models/product_model.dart';
import 'package:container_widget/bloc/card/card_event.dart';
import 'package:container_widget/bloc/card/card_state.dart';
import 'package:flutter/material.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc() : super(const CardState()) {
    on<AddToCard>((event, emit) {
      final existingProductIndex = state.carditems.indexWhere(
        (item) => item.id == event.product.id,
      );

      if (existingProductIndex == -1) {
        final updatedItems = [...state.carditems, event.product];
        emit(CardState(carditems: updatedItems));
      } else {
        final updatedItems = List<Product>.from(state.carditems);
        final oldProduct = updatedItems[existingProductIndex];

        final updatedProduct = oldProduct.copyWith(
          quantity: oldProduct.quantity + 1,
          price: oldProduct.price * (oldProduct.quantity+1),
        );

        updatedItems[existingProductIndex] = updatedProduct;
        emit(CardState(carditems: updatedItems));
      }
    });

    on<RemoveFromCard>(_removeitem);
  }

  void _removeitem(RemoveFromCard event, Emitter<CardState> emit) {
    final removecart = List<Product>.from(state.carditems)
      ..removeWhere((item) => item.id == event.product.id);
    emit(CardState(carditems: removecart));
  }
}
