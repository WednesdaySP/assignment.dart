import 'dart:io';

void main() {
  // Define the products map
  Map<String, String> products = {
    'bag': 'A stylish and functional bag',
    'kit': 'A handy tool kit for all your needs',
    'coffee': 'A delicious cup of coffee to start your day',
    'jeans': 'A pair of comfortable jeans to wear all day long',
    'dell laptop': 'A powerful Dell laptop for all your computing needs',
  };

  // Create a list to store the products in the cart

  // Get the user input
  String product;
  while (true) {
    print(
        'What product would you like to add to your cart? (Enter "q" to quit)');
    product = stdin.readLineSync()!;

    if (product == 'q') {
      break;
    }

    if (!products.containsKey(product)) {
      print('Product not found.');
      continue;
    }

    // Add the product to the cart using addCart() function
    addCart(product);
  }

  // Print the products in the cart
  print('The following products are in your cart:');
  for (String product in cart) {
    print(products[product]);
  }
}

List<String> cart = [];

// Function to add product to cart
void addCart(String product) {
  // Check if product already exists in cart
  if (cart.contains(product)) {
    print('Product already exists in cart.');
    return;
  }

  // Add product to cart
  cart.add(product);
}
