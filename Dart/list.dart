//In list we can store multiple value in same date_type ...
void main() {
  List<int> value = [1, 2, 3, 4, 5, 6];
  //by formal Triversing
  print(value[0]);
  print(value[1]);
  print(value[2]);
  print(value[3]);
  print(value[4]);
  print(value[5]);
  print("\n");
  //by loop Traversing
  for (int i = 0; i <= value.length - 1; i = i + 1) {
    print(value[i]);
  }
}
