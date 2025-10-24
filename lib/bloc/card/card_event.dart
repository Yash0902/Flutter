import 'package:container_widget/Models/product_model.dart';
import 'package:flutter/material.dart';

abstract class CardEvent{}

class AddToCard extends CardEvent{
    final Product product;
    AddToCard(this.product);
}


class RemoveFromCard extends CardEvent{
    final Product product;
    RemoveFromCard(this.product);
}