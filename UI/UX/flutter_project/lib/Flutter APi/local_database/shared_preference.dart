// ignore_for_file: unnecessary_import, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Flutter%20APi/Api_program/get_100_post_api.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  // String name = '';
  // int? rollNo;
  // double? number;
  // bool? istrue;

  @override
  // void initState() {
  //   super.initState();
  //   getdata_();
  // }

  // void getdata_() async {
  //   SharedPreferences sp = await SharedPreferences.getInstance();
  //   setState(() {
  //     name = sp.getString('Name') ?? '';
  //     rollNo = sp.getInt('Roll No');
  //     istrue = sp.getBool('isbool');
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Shared preference',
            style: GoogleFonts.andadaPro(
                fontSize: 20.sp, color: Colors.deepPurple),
          ),
        ),
      ),
      body: Column(
        children: [
          // Text(name.toString()),
          // Text(rollNo.toString()),
          // Text(istrue.toString()),
          FutureBuilder(
              future: SharedPreferences.getInstance(),
              builder: (context, AsyncSnapshot<SharedPreferences> snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Text(snapshot.data!.getString('Name') ?? ''),
                      Text(snapshot.data!.getInt('Roll No').toString()),
                      Text(snapshot.data!.getBool('isbool').toString()),
                    ],
                  );
                }
                return CircularProgressIndicator();
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          SharedPreferences sp = await SharedPreferences.getInstance();
          sp.setString('Name', "Gulshid Zada");
          sp.setInt('Roll No', 391);
          sp.setBool('isbool', true);
          sp.remove('Name');
          sp.setString('Name', "Gulshid ");
          setState(() {
            // ignore: avoid_print
            print('Data is saved');
          });
        },
        child: Icon(
          Icons.save,
          color: Colors.black,
        ),
      ),
    );
  }
}
