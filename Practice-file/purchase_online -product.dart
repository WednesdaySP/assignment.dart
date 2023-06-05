import 'dart:io';

bool userData(var email, var password) {
  var user = ["admin@gmail", "user@gmail"];
  var pass = ["1234", "1111"];

  for (var i = 0; i < user.length; i++) {
    if (email == user[i] && password == pass[i]) {
      return true;
    }
  }
  return false;
}

void line() {
  print("********************************");
}

product(var pname, int qty) {
  var productname = ['pen', 'pizza', 'coffee'];
  var productrate = [100, 150, 180];
  var productqty = [20, 30, 40];

  line();
  print("sno.\tp_name\tp_rate\tp_qty");

  for (var i = 0, j = 1; i < productname.length; i++, j++) {
    print("${j}\t${productname[i]}\t ${productrate[i]}\t ${productqty[i]}");
  }
  line();

  for (var i = 0; i < productname.length; i++) {
    if (productname[i] == pname) {
      return true;
    }
  }

  if (qty > 0) {
    for (var i = 0; i < productname.length; i++) {
      if (productqty[i] == qty && productname[i] == pname) {
        return true;
      }
    }
  }

  return false;
}

bool login() {
  stdout.write("Enter email: ");
  var email = stdin.readLineSync();
  stdout.write("Enter password: ");
  var password = stdin.readLineSync();
  if (userData(email!, password!)) {
    return true;
  } else {
    return false;
  }
}

void removeFromcart(var pname) {
  List productname = ['pen', 'pizza', 'coffee'];
  productname.remove(pname);
}

void addCart() {
  print("Enter product name:");
  var pname = stdin.readLineSync();
  if (product(pname, 0)) {
    print("Enter quantity:");
    var pqty = int.parse(stdin.readLineSync()!);
    if (product(pname, pqty)) {
      print("Rate: ");
      var prate = int.parse(stdin.readLineSync()!);
      var prod = Product(pname, prate, pqty);
      print("Want to remove any product?");
      var ans = stdin.readLineSync();
      print("Your ans: $ans");
      if (ans == 'yes') {
        removeFromcart('');
        print("Enter product name to be removed: $pname");
        print("Product removed successfull.");
      } else {
        print("Okay! product is not removed.");
      }

      payment(prod);
    } else {
      print("Invalid quantity.");
    }
  } else {
    print("Invalid product name.");
  }
}

class Product {
  var name;
  int rate;
  int quantity;

  Product(this.name, this.rate, this.quantity);
}

void payment(Product prod) {
  var paymentOptions = [
    'Paytm',
    'Net Banking',
    'Credit Card',
    'Cash On Delivery'
  ];

  line();
  print("sno.\tpayment_opt");
  for (int i = 0, j = 1; i < paymentOptions.length; i++, j++) {
    print("${j} \t${paymentOptions[i]}");
  }
  print("Enter mode of payment: ");
  var mode = stdin.readLineSync();
  if (mode == "Credit Card") {
    print("Enter cardHolderName: ");
    var cardHolderName = stdin.readLineSync();
    print("Enter cardNumber: ");
    var cardnum = stdin.readLineSync();
    print("Enter cvv: ");
    var cvv = stdin.readLineSync();
    print("Enter expirydate: ");
    var expirydate = stdin.readLineSync();

    print("$cardHolderName");
    print("$cardnum");
    print("$cvv");
    print("$expirydate");

    // Process credit card payment
  }

  // ...
  var amount = prod.rate * prod.quantity;
  int total = 0;
  total += amount;
  print("Total amount: $total");
  if (mode != 'Cash On Delivery') {
    print("Enter user amount:");
    var useramt = int.parse(stdin.readLineSync()!);
    if (useramt == amount) {
      print("Payment successful.Thank you!");
    } else {
      print("Plese pay exact amount!!");
    }
  } else {
    print("Order placed successfully!");
  }
}

void main() {
  while (true) {
    print("1. Login 2. Logout");
    var ch = int.parse(stdin.readLineSync()!);
    if (ch == 1) {
      if (login()) {
        print("Login successful");
        product("", 0);
        addCart();
      } else {
        print("Invalid credentials. Please try again.");
      }
    } else {
      break;
    }
  }
}
