import 'dart:io';

import 'addincart.dart';

//import 'addincart.dart';

class Payments extends Cart5 {
  void selectPaymentMethod() {
    while (true) {
      Map<String, dynamic> paymentOptions = {
        '1': 'Paytm',
        '2': 'Net Banking',
        '3': 'Credit Card',
        '4': 'Cash On Delivery'
      };

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
      } else if (mode == "Paytm") {
        // Process Paytm payment
        print("Enter Paytm username: ");
        var paytmUsername = stdin.readLineSync();
        print("Enter Paytm password: ");
        var paytmPassword = stdin.readLineSync();

        print("$paytmUsername");
        print("$paytmPassword");
        Amount();
      } else if (mode == "Net Banking") {
        // Process Net Banking payment
        print("Enter bank name: ");
        var bankName = stdin.readLineSync();
        print("Enter account number: ");
        var accountNumber = stdin.readLineSync();
        print("Enter IFSC code: ");
        var ifscCode = stdin.readLineSync();

        print("$bankName");
        print("$accountNumber");
        print("$ifscCode");
        Amount();
      } else if (mode == "Cash On Delivery") {
        // Process Cash On Delivery payment
        print(
            "You have chosen Cash On Delivery. Your order will be delivered to your address.");
      } else {
        print("Invalid payment option. Please try again.");
      }

      break;
    }
  }
}
