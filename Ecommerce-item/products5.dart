import 'dart:io';

import 'addincart.dart';

class Product5 {
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
    Cart5 ct = Cart5();
    ct.addCart();
  }
}
