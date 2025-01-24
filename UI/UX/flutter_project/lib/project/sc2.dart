import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sc2 extends StatelessWidget {
  const Sc2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.h,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 61, 243, 33),
        borderRadius: BorderRadius.circular(12.r),
      ),
    );
  }
}