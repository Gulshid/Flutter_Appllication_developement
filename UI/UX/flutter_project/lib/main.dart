import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
// import 'package:flutter_application_1/Flutter%20APi/Api_Tasks/Edit_profile.dart';
import 'package:flutter_application_1/Flutter%20APi/Api_Tasks/Splash_Screen.dart';
// import 'package:flutter_application_1/Flutter%20APi/Api_Tasks/Splash_Screen.dart';


// import 'package:http/http.dart' as http;
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// ignore: unused_import

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Dev',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home:Splash(),
        );
      },
    );
  } 
}
