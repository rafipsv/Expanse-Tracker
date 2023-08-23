// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget titleText(String title) {
  return Padding(
    padding: EdgeInsets.only(bottom: 20.h),
    child: GlowText(
      title,
      style: GoogleFonts.caveat(
        color: Colors.white,
        fontSize: 30.sp,
        fontWeight: FontWeight.w800,
        letterSpacing: 3,
      ),
    ),
  );
}

Widget customField(String hint, TextEditingController controller) {
  return Container(
    height: 50.h,
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    margin: EdgeInsets.only(bottom: 30.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.r),
      border: Border.all(
        color: Colors.white.withOpacity(0.5),
      ),
    ),
    child: TextField(
      controller: controller,
      style: GoogleFonts.caveat(
        color: Colors.white,
        fontSize: 18.sp,
        fontWeight: FontWeight.w900,
        letterSpacing: 3,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.caveat(
          color: Colors.white.withOpacity(0.8),
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          letterSpacing: 3,
        ),
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    ),
  );
}

Widget descriptionField(String hint, TextEditingController controller) {
  return Container(
    height: 150.h,
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 15.w),
    margin: EdgeInsets.only(bottom: 30.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.r),
      border: Border.all(
        color: Colors.white.withOpacity(0.5),
      ),
    ),
    child: TextField(
      controller: controller,
      style: GoogleFonts.caveat(
        color: Colors.white,
        fontSize: 18.sp,
        fontWeight: FontWeight.w900,
        letterSpacing: 3,
      ),
      cursorColor: Colors.white,
      maxLines: 10,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.caveat(
          color: Colors.white.withOpacity(0.8),
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          letterSpacing: 3,
        ),
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    ),
  );
}

Widget addSellButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 50.h,
        width: 150.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 16, 197, 155),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(
          "Add Sell",
          style: GoogleFonts.caveat(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.w900,
            letterSpacing: 3,
          ),
        ),
      ),
    ],
  );
}
