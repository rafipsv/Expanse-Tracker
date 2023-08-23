// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDetailsBox extends StatelessWidget {
  const HomeDetailsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: const Duration(milliseconds: 1200),
      child: Container(
        height: 120.h,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        decoration: BoxDecoration(
          color: const Color(0xff0B0C1E),
          border: Border.all(
            color: Colors.white.withOpacity(0.7),
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: FadeIn(
          delay: const Duration(milliseconds: 1500),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(false, "Today"),
                  customText(false, "This Month"),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(true, "100000"),
                  customText(true, "10000000"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customText(bool isAmount, String title) {
    return GlowText(
      title,
      style: GoogleFonts.caveat(
        color: isAmount ? Colors.white : Colors.white.withOpacity(0.8),
        fontSize: 25.sp,
        fontWeight: isAmount ? FontWeight.w800 : FontWeight.w700,
      ),
    );
  }
}
