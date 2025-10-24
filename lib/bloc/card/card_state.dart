
import 'package:container_widget/Models/product_model.dart';

class CardState{

  final List<Product> carditems;
  const CardState({this.carditems = const []});

  double get totalPrice =>
      carditems.fold(0, (sum, item) => sum + item.price);
}