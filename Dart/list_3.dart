import 'dart:io';

void main() {
  //List
  //This List(array )is used for all type of data...
  List ar = [1, 2, 3, 4, 5, 6, "HelLo", 2.3, 4.5];
  for (int a = 0; a < ar.length; a += 1) {
    print(ar[a]);
  }

  List<int> arr = [];
  print("Enter the element of list:");
  int? value = int.parse(stdin.readLineSync()!);
  for (int a = 1; a <= value; a++) {
    print('Enter the  $a element:');
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }
  print(arr);
  print(arr.length);
  print(arr.isEmpty);
  print(arr.isNotEmpty);
}
