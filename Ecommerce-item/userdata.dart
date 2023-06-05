import 'dart:io';

class UserData {
  bool userData(String email, int password) {
    var user = {"sp@gmail": 0210, "ps@gmail": 0311};

    return user.containsKey(email) && user[email] == password;
  }

  void line() {
    print("********************************");
  }

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
}
