//In list we can store multiple value in same date_type ...
void main() {
  //for integer valeu
  List<int> value = [1, 2, 3, 4, 5, 6];
  print(value);
  print("\n");
  //by formal Triversing
  print(value[0]);
  print(value[1]);
  print(value[2]);
  print(value[3]);
  print(value[4]);
  print(value[5]);
  print("\n");
  //by loop Traversing
  print(value);
  print("\n");
  for (int i = 0; i <= value.length - 1; i = i + 1) {
    print(value[i]);
  }

  print("\n\n\n");
  //for String
  List<String> fruit = ['Mango', 'banana', 'peach', 'Apple'];
  print(fruit);
  //formal traverse
  print(fruit[0]);
  print(fruit[1]);
  print(fruit[2]);
  print(fruit[3]);

  print("\n");
  //loop traverse
  for (int j = 0; j < fruit.length; j += 1) {
    print(fruit[j]);
  }
}
