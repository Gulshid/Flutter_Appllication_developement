// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

class Hive_database extends StatefulWidget {
  const Hive_database({super.key});

  @override
  State<Hive_database> createState() => _Hive_databaseState();
}

class _Hive_databaseState extends State<Hive_database> {
  //reference
  final _myBox = Hive.box('mybox');
  //write data
  void writedata() {
    _myBox.put(1, 'Gulshid');
  }

  //read data
  void readdata() {
    print(_myBox.get(1));
  }

  //delete data
  void deletedata() {
    print(_myBox.delete(1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          MaterialButton(
            onPressed: writedata,
            child: Text('Write'),
            color: Colors.teal,
          ),
          MaterialButton(
            onPressed: readdata,
            child: Text('Read'),
            color: Colors.teal,
          ),
          MaterialButton(
            onPressed: deletedata,
            child: Text('delete'),
            color: Colors.teal,
          ),
                ],
              ),
        ));
  }
}
