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
    "cart": [
      {"productid": [], "cartqty": []}
    ]
  };
  product(String? pname, int qty) {
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

// product(String? pname, int qty) {
//   var productname = {
//     'pen': {'rate': 20, 'qty': 35},
//     'pizza': {'rate': 190, 'qty': 10},
//     'coffee': {'rate': 180, 'qty': 20},
//     'books': {'rate': 199, 'qty': 50},
//     'tshirt': {'rate': 280, 'qty': 17}
//   };

//   line();
//   print("sno.\tp_name\tp_rate\tp_qty");
//   productname.forEach((key, value) {
//     print(
//         "${productname.keys.toList().indexOf(key) + 1}\t ${key}\t ${value['rate']}\t ${value['qty']}");
//   });

//   line();

//   for (var i = 0; i < productname.length; i++) {
//     if (productname.containsKey(pname)) {
//       return true;
//     }
//   }

//   if (qty > 0) {
//     for (var product in productname.entries) {
//       if (qty == product.value['qty'] && pname == product.key) {
//         return true;
//       }
//     }
//   }

//   return false;
// }

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

  void removeFromcart(var pname) {
    Map<String, dynamic> product_name = {
      'product1': 'coffee',
      'product2': 'bread',
      'product3': 'popcornes',
      'product4': 'hundai car',
      'product5': 'flip-flopes'
    };
    for (var i = 0; i < product_name.length; i++) {
      product_name.remove(pname);
    }
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
        var prod = SProduct(pname, prate, pqty);
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

  void payment(SProduct prod) {
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

    // int amount = (prod.rate * prod.quantity);
    // int total = 0;
    // total += amount;
    // print("Total amount: $total");
    // if (mode != 'Cash On Delivery') {
    //   print("Enter user amount:");
    //   var useramt = int.parse(stdin.readLineSync()!);
    //   if (useramt == amount) {
    //     print("Payment successful.Thank you!");
    //   } else {
    //     print("Plese pay exact amount!!");
    //   }
    // } else {
    //   print("Order placed successfully!");
    // }
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
            //
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
