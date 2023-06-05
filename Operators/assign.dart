var userData = () {
  print("object");
};

fun1(var n) => n * 2;
ListData(list) {
  print(list);
  for (var i in list) {
    print(i);
  }
}

main() {
  userData();
  print(fun1(3));
  var list = [2, 3, 4, 5, 6];
  list.forEach((e) {
    print(e);
  });
  //list.map((e) => print(e));
  ListData(list);
}
