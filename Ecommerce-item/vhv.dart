import 'dart:io';

class SProduct {
  var name;
  var ratee;
  var quantity;

  SProduct(this.name, this.ratee, this.quantity);

  bool userData(String email, int password) {
    var user = {"admin@gmail": 1234, "user@gmail": 1111};

    return user.containsKey(email) && user[email] == password;
  }

  void line() {
    print("********************************");
  }

  List<int> pr_id = [1, 2, 3, 4, 5];
  List<String> product_name = [
    "coffee pack",
    "wheat bread",
    "popp cornes",
    "hundai cars",
    "flip-flopes"
  ];

  List<int> qnty = [10, 20, 30, 40, 50];
  List<int> rate = [100, 200, 300, 400, 500];
  List<int> dis = [2, 5, 1, 2, 4];

  var productdata = {
    "pr_id": [],
    "product_name": [],
    "rate": [],
    "qty": [],
    "dis": [],
    "cart": []
  };

  void product(String? pname, int qty) {
    productdata["pr_id"] = pr_id;
    productdata["product_name"] = product_name;
    productdata["rate"] = rate;
    productdata["qty"] = qnty;
    productdata["dis"] = dis;

    print("************** Product ***********");
    for (var j = 0; j < pr_id.length; j++) {
      if (j == 0) {
        for (var key in productdata.keys) {
          if (key != "cart") {
            stdout.write("$key");
            stdout.write("\t");
          }
        }
        print("");
      }

      for (var key in productdata.keys) {
        if (key != "cart") {
          stdout.write(productdata[key]?[j]);
          stdout.write("\t");
        }
      }
      print("");
    }
    addCart();
  }

  bool login() {
    stdout.write("Enter email: ");
    String email = stdin.readLineSync()!;
    stdout.write("Enter password: ");
    int password = int.parse(stdin.readLineSync()!);
    if (userData(email, password)) {
      return true;
    } else {
      return false;
    }
  }

  void removeFromCart(var pname) {
    productdata["cart"]?.removeWhere((item) => item["productid"] == pname);
  }

  void addCart() {
    print(
        "Enter product name (or 'done' to finish adding products to the cart):");
    var pname = stdin.readLineSync();
    while (pname != 'done') {
      var productIndex = product_name.indexOf(pname!);
      if (productIndex != -1) {
        print("Enter quantity:");
        var pqty = int.parse(stdin.readLineSync()!);
        if (pqty <= qnty[productIndex]) {
          var prate = rate[productIndex];
          var prod = SProduct(pname, prate, pqty);
          print("product $prod");
          var item = {
            "productid": pname,
            "cartqty": pqty,
          };
          productdata["cart"]?.add(item);
        } else {
          print(
              "Invalid quantity. Quantity should be less than or equal to ${qnty[productIndex]}");
        }
      } else {
        print("Invalid product name.");
      }
      print(
          "Enter product name (or 'done' to finish adding products to the cart):");
      pname = stdin.readLineSync();
    }

    if (productdata["cart"]!.isEmpty) {
      print("Cart is empty. Exiting...");
    } else {
      print("Cart details:");
      for (var item in productdata["cart"]!) {
        var productIndex = product_name.indexOf(item["productid"]);
        var totalAmount = item["cartqty"] * rate[productIndex];
        print(
            "${item["productid"]} \t Quantity: ${item["cartqty"]} \t Rate: ${rate[productIndex]} \t Total Amount: $totalAmount");
      }
      calculateTotalAmount();
    }
  }

  void calculateTotalAmount() {
    var totalAmount = 0;
    for (var item in productdata["cart"]!) {
      var productIndex = product_name.indexOf(item["productid"]);
      print("prod intex of the product: $productIndex");
      print("items in: $item");
      //totalAmount += (item["cartqty"] * rate[productIndex]);
    }
    print("Total amount: $totalAmount");
    selectPaymentMethod();
  }

  void selectPaymentMethod() {
    Map<String, dynamic> paymentOptions = {
      '1': 'Paytm',
      '2': 'Net Banking',
      '3': 'Credit Card',
      '4': 'Cash On Delivery'
    };

    line();
    print("sno.\tpayment_opt");
    paymentOptions.forEach((key, value) {
      print("${paymentOptions.keys.toList().indexOf(key) + 1}\t${value}");
    });

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

    print("Payment successful. Thank you!");
  }

  Login() {
    print("************ Login ***********");
    print("Enter name");
    String name = stdin.readLineSync()!;
    for (var u in userdata.keys) {
      if ("user" == u) {
        for (var udata in userdata[u]) {
          print("$name => $udata ");
          if (name == udata) {
            print("user Registered");

            while (true) {
              print("1. Login 2. Logout");
              var ch = int.parse(stdin.readLineSync()!);
              if (ch == 1) {
                if (login()) {
                  print("Login successful");
                  product("", 0);
                }
              } else {
                break;
              }
            }
          }
        }
      }
    }
  }

  var userdata = {};

  List<String> username = ["user1", "user2"];

  Register() {
    print("Enter key for Registration: ");
    String key = stdin.readLineSync()!;
    userdata[key] = username;
    print("Enter user name: ");
    String name = stdin.readLineSync()!;
    for (var u in userdata.keys) {
      if (key == u) {
        for (var udata in userdata[u]) {
          if (name == udata) {
            print("User Registered");
            Login();
          } else {
            username.add(name);

            userdata[key] = username;
            print(userdata);
            Login();
          }
        }
      }
    }
  }
}

void main() {
  var shop = new SProduct("", 0, 0);
  shop.Register();
}
