void main() {
  //add function to store the value in list 
  List<int> num = [];
  num.add(2);
  num.add(3);
  num.add(4);
  num.add(6);
  num.add(8);
//first way to Access the array(list) Element
  print(num);
//Second way to Acesss the array(list) Element
  print("\n");
  print(num[0]);
  print(num[1]);
  print(num[2]);
  print(num[3]);
  print(num[4]);

  print("\n");
//3rd way to Access thr array(List) Element
  for (int z = 0; z < num.length; z += 1) {
    print(num[z]);
  }
}
