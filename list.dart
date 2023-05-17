// //using func: login, product show=3, (id, name, rate , quantity) 3. add to cart, 4.addtocart remove, 5. payment;

import 'dart:io';

// import 'cart.dart';
void main() {
  print("Enter your username and password to login");
  stdout.write("Enter your username:");
   var username=stdin.readLineSync();
  
  stdout.write("Enter your password:");
  var password=stdin.readLineSync();

 

  // if(username==""&& password=="")
  // {
  //   print("Fill the details to login!");
  // }
  // else{}
      print("Username:$username");
  print("Password: $password");
    print("Login");

  prod();
//   // var pin=1111;
//   // if(pin==1111)
//   // {
//   //   print("login");
//   // }
}
void prod(){

  List<String> items=["Bag","Hat","Headphones","Mobile","Watch","Shoes","Dress"];
  print("Items available: $items");
stdout.write("Enter first product: ");
var product1=stdin.readLineSync();



stdout.write("Enter second product: ");
var product2=stdin.readLineSync();



stdout.write("Enter third product: ");
var product3=stdin.readLineSync();

print("Product1: $product1");
print("Product2: $product2");
print("Product3: $product3");
 var product=(product1,product2,product3);
  var addtocart;

  for(product in addtocart)
  {
    // addtocart(cart, id, rate);
    addtocart.add(product);
    print("Products added to your cart $addtocart");
    addtocart.remove(product);
    print("Removed products: $addtocart");
  }
  
 }





// import 'dart:io';

// void main() {
//   stdout.write('Enter your username: ');
//   var username = stdin.readLineSync();

//   stdout.write('Enter your password: ');
//   var password = stdin.readLineSync();

//   print('Username: $username');
//   print('Password: $password');
// }
