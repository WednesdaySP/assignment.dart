class UserData {
  var user = ["user1", "user2"];
  var usnm;
  var pass;

  UserData(String usnm, String pass) {
    this.usnm = usnm;
    this.pass = pass;
  }
  // setUser(String usnm) {
  //   this.usnm = usnm;
  // }

  // setPass(String pass) {
  //   this.pass = pass;
  // }
  showUserInfo(String usnm, String pass) {
    this.usnm = usnm;
    this.pass = pass;
  }

  showUserData() {
    print(usnm);
    print(pass);
  }
}
