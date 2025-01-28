import 'package:flutter/material.dart';

// import 'package:flutter_application_1/Flutter%20APi/get_100_post_api.dart';
import 'package:flutter_application_1/Flutter%20APi/get_10_users_detail.dart';
// import 'package:flutter_application_1/Flutter%20APi/get_100_post_api.dart';


// ignore: unused_import
import 'package:http/http.dart' as http;

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Dev',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home:get_10_users(),
        );
      },
    );
  }
}
