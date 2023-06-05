import 'dart:io';

import 'products5.dart';
import 'userdata.dart';

class Reg {
  Login() {
    print("************ Login ***********");
    print("Enter name");
    String name = stdin.readLineSync()!;
    for (var u in userdata.keys) {
      if ("sp" == u) {
        for (var udata in userdata[u]) {
          print("$name => $udata ");
          if (name == udata) {
            print("user Registered");

            print("1. Login 2. Logout");
            var ch = int.parse(stdin.readLineSync()!);
            if (ch == 1) {
              UserData ud = UserData();

              Product5 pdd = Product5();

              if (ud.login()) {
                print("Login successful");
                pdd.product("", 0);
              }
            } else {
              break;
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
