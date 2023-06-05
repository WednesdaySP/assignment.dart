import 'product.dart';
import 'userdata.dart';

class Info {
  var username = "user";
  var data = ["data1", "data2"];
}

// class Emp extends USerData {
//   datashow() {
//     print(user);
//     //print(username);
//     print("Hello");
//   }
// }

class Code extends Productt {
  @override
  // showcode() {
  //   print(prod);
  //   print("code");
  // }
  showProduct() {
    print(prod);
  }

  setProduct() {
    print("hello");
  }
}

main() {
  var objimp = new Code();
  objimp.showProduct();
//   var obj = new Emp();
//   obj.datashow();

  var us = new UserData("Shashi", "12344");
  us.showUserInfo("usnm", "pass");
  us.showUserData();
}
