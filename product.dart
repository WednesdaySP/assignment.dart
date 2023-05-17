import 'dart:io';

void main() {
  print("Enter your username and password to login");
  stdout.write('Enter your username:');
  var username = stdin.readLineSync();
  stdout.write('Enter your password: ');
  var password = stdin.readLineSync();
  print("username:$username");
  print("password:$password");
  print("login");
  print('---------------');

  List<Map<String, dynamic>> shoppingCart = [];

  List<String> products = ['Hundai Genesis', 'Lamborgini', 'Bugatti'];
  List<double> rates = [100000, 150000, 800000];
  List<int> quantities = [5, 4, 3];

  for (int i = 0; i < products.length; i++) {
    String product = products[i];
    double rate = rates[i];
    int quantity = quantities[i];

    Map<String, dynamic> Item = {
      'product': product,
      'rate': rate,
      'quantity': quantity
    };

    shoppingCart.add(Item);
  }

  for (int i = 0; i < shoppingCart.length; i++) {
    Map<String, dynamic> Item = shoppingCart[i];

    String product = Item['product'];
    double rate = Item['rate'];
    int quantity = Item['quantity'];

    print('Product: $product');
    print('Rate: $rate');
    print('Quantity: $quantity');
    print('---------------');
  }

  makePayment("Shashi", "8848 9843 7585 5834", "08/26", "056", 100.09);
}

void makePayment(
  String cardHolderName,
  var cardNumber,
  var expirationDate,
  var cvv,
  double amount,
) {
  print("Processing payment of $amount");
  print("Card Holder Name: $cardHolderName");
  print("Card Number: $cardNumber");
  print("Expiration Date: $expirationDate");
  print("CVV:$cvv");

  print("Payment successful!");
}