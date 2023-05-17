void main()
{
  print("Hello Shashi");
  int n1=4;
  int n2=5;
  String s='sita';
  String s2="gita";
  int r= n1+ n2;
  int n= n1%n2;
  int p= n1* n2;
  bool m= n1<=n2;
  bool k= n1== n2;
  bool l= s=="gita" && s2=="sita";
  bool a=s=="sita"||s2=="gita";
  double nm=n1/n2;
  
  var g=10;
  var e=15;
  var d=e/g;
  var log=e >20 ||g >4;
  print(log);
  print("*************");
  print("Division is:${d}");
  print("*************");
  print(r);
  print("*************");
  print("Result=${r}");
  print("*************");
  print(l);
  print("*************");
  print(a);
  print("*************");
  print(n);
  print("*************");

  print(p);
  print("*************");

  print(m);
  print("*************");

  print(k);
  print("*************");

  print(nm);
  print("*************");

  print(s is int);
  print(s2 is! int);

  print("*************");
  print(++n1);


   var ans = 1;

   ans == 10 ? print("Answer is 10") : print("Oh no! ye kya ho gaya, ab me kya kru😢😢😢");

   if(n2%2==0) print("even");

   else print("odd");

  var x="Shashi";
  print(x.runtimeType);

  const u="Sneha";
  print("Sincere girl : $u");

  if(true)
  {
    print(true);
  }

  int pin=1111;
  
  if(pin==1111)
  {
    print("login");
  }
  else if(pin=="1234"){
    print("login");
  }
  else {print("no login");}
  // for(int i=1;i<=10;i++){
  //   print(i);
  // }
  // int i=1;
  // while(i<=5){
  //   print(i++);
  // }

}
