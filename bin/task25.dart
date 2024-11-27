import 'dart:math';


void main() {
  int hour = DateTime.now().hour;
  String find_date_time = (hour < 12)
      ? "Good morning"
      : (hour < 18)
          ? "Good Afternoon"
          : "Good Evening";
  print("Now Date Time is :$find_date_time");
  
  int random = Random().nextInt(20);
  print("The random number is :$random");
}
