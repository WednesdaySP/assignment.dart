import 'dart:io';
import 'Payment5.dart';
import 'gpt4.dart';

import 'products5.dart';
import 'removeitem.dart';

class Cart5 extends Product5 {
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
          "Enter product name (or 'done' to finish adding products to the cart): ");
      pname = stdin.readLineSync();
    }

    if (productdata["cart"]!.isEmpty) {
      print("Cart is empty. Exiting...");
    } else {
      print("Cart details:");
      for (var item in productdata["cart"]!) {
        var productIndex = product_name.indexOf(item["productid"]);
        int totalAmount = item["cartqty"] * rate[productIndex];
        print(
            "${item["productid"]} \t Quantity: ${item["cartqty"]} \t Rate: ${rate[productIndex]} \t Total Amount: $totalAmount");
      }
    }
    Remove remover = Remove();
    print("Do you want to remove any product from cart? (yes/no)");
    var removeChoice = stdin.readLineSync();
    //  int totalAmount = 0;
    if (removeChoice == "yes") {
      print("Enter the name of the product to remove: ");
      var productToRemove = stdin.readLineSync();
      remover.removeFromCart(productToRemove);

      print("Items in cart: ");

      for (var item in productdata["cart"]!) {
        var productIndex = product_name.indexOf(item["productid"]);
        int subtotal = item["cartqty"] * rate[productIndex];
        totalAmount += subtotal;
        print(
            "${item["productid"]}\tQuantity: ${item["cartqty"]}\tRate: ${rate[productIndex]}\tSubtotal: $subtotal");
      }
    } else {
      print("Item not removed");
    }

    print("Total amount of all the product present in cart: $totalAmount");

    print("******** Payment ***********");
    Payments pay = Payments();
    pay.selectPaymentMethod();
    // calculateTotalAmount();
  }

  int totalAmount = 0;
  // calculateTotalAmount() {
  //   if (productdata["cart"] != null) {
  //     for (var item in productdata["cart"]!) {
  //       int productIndex = product_name.indexOf(item["productid"]);
  //       int n = rate[productIndex];
  //       int c = item["cartqty"];
  //       totalAmount += c * n;
  //       ;
  //     }

  //   }
  // }

  Amount() {
    while (true) {
      print("*********** Amount fun *********");
      stdout.write("Enter user amount: ");
      var useramount = int.parse(stdin.readLineSync()!);
      if (useramount < totalAmount) {
        stdout.write("Please enter exact amount!!");
      } else {
        stdout.write("Payment Successful!!\n");
        stdout.write("Thank you  for the purchase!  Come back soon....");
        break;
      }
    }
  }
}
