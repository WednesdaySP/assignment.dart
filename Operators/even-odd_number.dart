main() {
  int q = 232546;
  String qString = q.toString();
  int count = qString.length;
  print("count=$count");
  int sum = 0;

  int even_dig = 0;
  // String qString=q.toString();
  for (int j = 0; j < qString.length; j++) {
    int digit = int.parse(qString[j]);
    if (digit % 2 == 0) {
      even_dig = even_dig * 10 + digit;
      print(digit);
      sum += digit;
    }
  }
  print("Sum of even numbers: $sum");
  // int digit=int.parse(qString);
  while (even_dig != 0) {
    int digit = even_dig % 10;
    print(digit);
    even_dig ~/= 10;
  }
}
