void main() {
  //add function
  List<int> marks = [];
  marks.add(231);
  marks.add(220);
  marks.add(390);
  print("The marks is :$marks");

  //first element and last element
  print("\n");
  List<int> value = [1, 2, 3];
  int first_value = value[0];
  print(first_value);
  int last_Elemnet = value[value.length - 1];
  print(last_Elemnet);

  print("\n");
  //remove function
  List<String> fruit = ['Banana', 'Apple', 'Mango'];
  fruit.remove('Apple');
  print(fruit);
  print("\n");

  //Is_Empty function
  List<int> n = [2, 4, 6];
  print(n.isEmpty);

  print("\n");
//is_not Empty function
  List<int> a = [1, 2];
  print(a.isNotEmpty);
  print("\n");

  //length of list function
  List<String> name = ['Ahmad', 'qasim'];
  print(name.length);
  print("\n");
  List<int> c = [1, 2, 3, 4, 5, 6];
  print(c.length);
  print("\n");

  //Traverse element of list in reverse order
  List<int> number = [1, 2, 3, 4, 5];
  for (var element in number.reversed) {
    print(element);
  }

  print("\n");
  //for each loop function
  List<double> decimal = [2.3, 4.4, 6.4];
  decimal.forEach((decimals) => print(decimals));
  print("\n");

  //first and last element
  List<int> numb = [2, 3, 4, 5, 6];
  int r=numb.first;
  print(r);
  print("\n");
  int s=numb.last;
  print(s);
}
