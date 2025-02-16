// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Flutter%20APi/Api_program/hive_program.dart';
// // import 'package:flutter/cupertino.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// // import 'package:path_provider/path_provider.dart' as path;
// import 'package:hive/hive.dart';

// void main() async {
//   //for hive database
//   // initialize hive local database...
//   // await Hive.initFlutter();
//   //open the box
//   // var box = await Hive.openBox('mybox');

//   //for Hive program
//   WidgetsFlutterBinding.ensureInitialized();
//   await Hive.initFlutter();
//   await Hive.openBox('MyBox');

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: Size(360, 690),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (context, child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'Flutter Dev',
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//             textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
//           ),
//           home:hive_1(),
//         );
//       },
//     );
//   }
// }
