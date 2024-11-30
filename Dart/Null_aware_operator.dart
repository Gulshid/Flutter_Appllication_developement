void main() {
  // int x;
  int? y;
  // print(x);//it display me error because we dont assign value and we can print it
  print(
      y); //it is also we dont assiign a value but it is not display the same error
  //because we putt a null aware operator...

  String? name_1 = "hello";
//  String? name_2;
  print(name_1.toUpperCase());
  //print(name_2.toUpperCase());  //it also display me error because we dont assign any number
  // The operator !.
  int? s;
  print(s!);        //the Operator ! cant be null

  
  int? x = null;
  print(x);

  int? z;
  print(z ?? '50'); // the sign ?? is to assign the value of integer

  String? name;
  print(name ?? "Hello World"); //String Example
}
