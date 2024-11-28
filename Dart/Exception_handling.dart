void main() {
  String x = 'Hello';
  try {
    var Str2 = int.parse(x) ~/ 2;
    print(x);
  } catch (e) {
    print("Error");
  }
}
