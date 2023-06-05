import 'dart:io';

class Product {
  final String name;
  final double rate;
  int quantity;

  Product(this.name, this.rate, {this.quantity = 0});
}

class Cart {
  List<Product> items = [];

  void addProduct(Product product) {
    items.add(product);
  }

  void addCart() {
    print("Available Products:");
    for (int i = 0; i < availableProducts.length; i++) {
      Product product = availableProducts[i];
      print("${i + 1}. ${product.name} - \$${product.rate}");
    }

    stdout.write("Enter the product number to add to cart (0 to exit): ");
    int productNumber = int.parse(stdin.readLineSync()!);

    if (productNumber > 0 && productNumber <= availableProducts.length) {
      Product selectedProduct = availableProducts[productNumber - 1];
      stdout.write("Enter the quantity: ");
      int quantity = int.parse(stdin.readLineSync()!);

      if (quantity > 0) {
        selectedProduct.quantity = quantity;
        addProduct(selectedProduct);
        print("${selectedProduct.name} added to cart.");
        addCart();
      } else {
        print("Invalid quantity. Please try again.");
        addCart();
      }
    } else if (productNumber == 0) {
      print("Thank you for using the program!");
    } else {
      print("Invalid product number. Please try again.");
      addCart();
    }
  }
}

List<Product> availableProducts = [
  Product("Product 1", 10.0),
  Product("Product 2", 15.0),
  Product("Product 3", 20.0),
  Product("Product 4", 25.0),
  Product("Product 5", 30.0),
];

void main() {
  Cart cart = Cart();
  cart.addCart();
}
