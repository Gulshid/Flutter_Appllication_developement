import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class post_api extends StatefulWidget {
  const post_api({super.key});

  @override
  State<post_api> createState() => _post_apiState();
}

class _post_apiState extends State<post_api> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 141, 72, 173),
          title: Center(
              child: Text('Post Api',
                  style: GoogleFonts.pacifico(
                    fontSize: 20,
                  ))),
        ),
        body: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  height: 100.h,
                  decoration: BoxDecoration(
                    color:index.isEven?const Color.fromARGB(255, 174, 45, 225):const Color.fromARGB(255, 176, 26, 146),
                    borderRadius: BorderRadius.circular(20.r),
                  ),

                ),
              );
            }));
  }
}
