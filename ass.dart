main(){

  int q=232546;
  String qString= q.toString();
  int count=qString.length;
  print("count=$count");
  int sum=0;
  
   int even_dig =0;
  // String qString=q.toString();
  for(int j=0;j<qString.length;j++)
  {
    int digit=int.parse(qString[j]);
    if(digit%2==0){
       even_dig =even_dig*10+digit;
      print(digit);
      sum +=digit;
    }
  }
  print("Sum of even numbers: $sum");
  // int digit=int.parse(qString);
  while(even_dig!=0){
    int digit=even_dig%10;
    print(digit);
    even_dig ~/=10;
  }
  
    // double num=123456;
    // List even_dig=[6];
    // List odd_dig=[6];
    // int i=0;
    // // double nn;
    // while(num>0)
    // {
    //      double dig=num%10;
    //     if(num%2==0)
    //     {
    //         even_dig[i]= dig;
    //         i++;

            
    //     }
    //     else
    //     {
    //         odd_dig[i]=dig;
    //     }
    //      num=num/10;
    // }
    // for(int j=0;j<i;j++)
    // {
    //     print("$even_dig");
    // }
    // for(int k=0;k<i;k++)
    // {
    //     print(" $odd_dig");
    // }
}