import 'dart:io';

void main() {
  //task16
  //write program for table
  print("Enter the Table that you want:");
  int table_value = int.parse(stdin.readLineSync()!);
  int that_time = int.parse(stdin.readLineSync()!);
  int i = 0;
  int mul=0;
  while (i <= that_time) {
      mul=i*table_value;
    print("  $table_value x $i = $mul");
    i++;
  }
}
