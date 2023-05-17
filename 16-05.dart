

main()
{
  int num=12398465;
  print("Number:$num");
  
  List<int> digits = num.toString().split('').map(int.parse).toList();
   print("List: $digits");

    List<int> even_dig=[];
    List<int> odd_dig=[];
    List<int> finalist=[];

 for(int digit in digits){


   if(digit%2==0)
  {
     even_dig.add(digit);
   
  }
  else{
   
    odd_dig.add(digit);
  }
 }
 print("Even digits: $even_dig");
 print("Odd digits: $odd_dig");
 finalist=even_dig+odd_dig;
 print("Final list: $finalist");

}


