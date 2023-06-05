import 'dart:io';

List<String> username = ["user1", "user2"];
List<int> pr_id = [1, 2, 3, 4, 5];
List<String> product_name = [
  "product1",
  "product2",
  "product3",
  "product4",
  "product5"
];
List<int> qty = [10, 23, 34, 20, 30];
List<int> rate = [100, 200, 300, 400, 350];

var userdata = {};
var productdata = {
  "pr_id": pr_id,
  "product_name": product_name,
  "qty": qty,
  "rate": rate,
  "dis": [2, 1, 3, 2, 4],
  "cart": [
    {"productid": [], "cartqty": []}
  ]
};
// productCheck(product) {
//   print(product);

//   var pos;

//   var pro_name = productdata['product_name'];
//   print(pro_name);
//   for (var i = 0; i < pr_id.length; i++) {
//     if (pro_name != product_name[i]) {
//       print(pos = -1);

//       break;
//     }
//   }
//   return pos;
// }

// productCheck(product) {
//   print(product);

//   var pos = -1; // Initialize pos to -1

//   var pro_name = productdata['product_name'];
//   print(pro_name);
//   for (var i = 0; i < pro_name!.length; i++) {
//     // Iterate over pro_name list
//     if (pro_name[i] == product) {
//       // Compare individual elements with the input product
//       pos = i; // Assign the index to pos
//       break; // Exit the loop since we found a match
//     }
//   }
//   return pos;
// }

// cart() {
//   print("************* cart ************");
//   var productname = stdin.readLineSync();
//   var pos = productCheck(productname);
//   productdata["cart"] = [
//     {"productid": [], "cartqty": []}
//   ];
//   print(productdata);
//   print(pos);
// }

Product() {
  print("******product******");

// var n = productdata['pr_id'];
// print(n);

  for (var j = 0; j < pr_id.length; j++) {
    if (j == 0) {
      for (var i in productdata.keys) {
        if (i != "cart") {
          stdout.write("$i");
          stdout.write("\t");
        }
      }

      print(" ");
    }

    for (var i in productdata.keys) {
      //print(key);
      if (i != "cart") {
        stdout.write(productdata[i]![j]);
        stdout.write("\t");
      }
    }
    print("");
  }
//   cart();
}

/* 
p_id p_name     qty   rate
 1    product1   23   200
 1    product1   23   200 */
Login() {
  print("********* login ************");
  print("enter name");
  String name = stdin.readLineSync()!;
  for (var u in userdata.keys) {
    if ("user" == u) {
      for (var udata in userdata[u]) {
        print("$name=>$udata ");
        if (name == udata) {
          print(" user login");
          Product();
        }
      }
    }
  }
}

void Register() {
  print("enter key for login");
  String key = stdin.readLineSync()!;

  userdata[key] = username;
  print("enter user name");
  String name = stdin.readLineSync()!;
  for (var u in userdata.keys) {
    if (key == u) {
      for (var udata in userdata[u]) {
        if (name == udata) {
          print(" user login ");
          Login();
          // break;
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

void main() {
  while (true) {
    Register();
  }
}
