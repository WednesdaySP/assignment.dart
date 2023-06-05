import 'user/Loginuser.dart';
import 'user/userInfo.dart';

class DB {
  void showUser() {
    print("USername");
  }
}

void main() {
  var obj = new DB();
  var objuser = new UsserInfo();
  objuser.User();
  objuser.userInput();
  if (objuser.getUser()) {
    print("login");
  }
  obj.showUser();

  var objlog = new Loginuser();
  objlog.fun_login();
}
