import 'dart:io';

void main() {
  //Ask from user to enter country and capital of the state and save it in map
  //show it?

  Map<String, String> countryCapitalMap = {};

  print("Enter the number of countries you want to input:");
  int count = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < count; i++) {
    print("Enter the name of the country:");
    String country = stdin.readLineSync()!;
    print("Enter the capital of $country:");
    String capital = stdin.readLineSync()!;

    countryCapitalMap[country] = capital;
  }

  print("\nCountry and their capitals:");
  countryCapitalMap.forEach((country, capital) {
    print("$country: $capital");
  });
}


