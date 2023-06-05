import 'products5.dart';

class Remove extends Product5 {
  void removeFromCart(productToRemove) {
    productdata["cart"]
        ?.removeWhere((item) => item["productid"] == productToRemove);
  }
}
