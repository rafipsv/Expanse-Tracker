// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glowstone/glowstone.dart';
import 'package:google_fonts/google_fonts.dart';

Widget splashLogo() {
  return FadeInDown(
    delay: const Duration(milliseconds: 1000),
    duration: const Duration(milliseconds: 1000),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Glowstone(
          radius: 20,
          // velocity: 1,
          color: Colors.tealAccent.withOpacity(0.7),
          child: Image.asset(
            "assets/images/budget.png",
            height: 170.h,
            width: 170.w,
            fit: BoxFit.fill,
          ),
        ),
      ],
    ),
  );
}

Widget companyName() {
  return FadeInUp(
    delay: const Duration(milliseconds: 1000),
    duration: const Duration(milliseconds: 1000),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Saima's Makeover",
          style: GoogleFonts.caveat(
            color: Colors.white,
            fontSize: 40.sp,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    ),
  );
}
