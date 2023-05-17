import 'dart:io';

class Product 
{

  String id;

  double rate;

  Product(this.id, this.rate);
}

void main() 
{
  List<Product> cart = [];

  for (int i = 0; i < 3; i++) {
    stdout.write('Enter product name: ');
    var name = stdin.readLineSync();

    stdout.write('Enter quantity: ');
    int quantity = int.parse(stdin.readLineSync());

    // Assuming the ID and rate are calculated based on the name and quantity
    String id = '${name.substring(0, 3)}_${quantity}';
    double rate = quantity * 10.0; // Just an example calculation

    print('Product ID: $id');
    print('Rate: $rate');

    addtocart(cart, id, rate);
  }

  print('Products added to cart:');
  for (Product product in cart) {
    print('Product ID: ${product.id}, Rate: ${product.rate}');
  }
}

void addtocart(List<Product> cart, String id, double rate) 
{
  cart.add(Product(id, rate));
}
