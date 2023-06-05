import 'setget.dart';
import 'userinfo.dart';

class Admin {
  void Display() {
    var uin = new UserInfo();
    uin.setInfo("shashi");
    uin.showData();
    print(uin.getInfo());

    var us = new USINFO();
    us.setInfoo = "Prabha";
    print(us.getInfoo);
  }
}

void main() {
  var ad = new Admin();
  ad.Display();
}
