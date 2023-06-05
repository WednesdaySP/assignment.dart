import 'Payment5.dart';
import 'addincart.dart';
import 'reg-login.dart';

class SProduct extends Cart5 {
  var name;
  var ratee;
  var quantity;

  SProduct(this.name, this.ratee, this.quantity);
}

void main() {
  var shop = new Reg();
  shop.Register();
  var pay = new Payments();
  pay.selectPaymentMethod();
  // var objcart = new Cart5();
  // objcart.
}
