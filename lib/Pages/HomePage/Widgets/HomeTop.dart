// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glowstone/glowstone.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_glow/flutter_glow.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customLogo(),
          customText(),
        ],
      ),
    );
  }

  Widget customLogo() {
    return FadeInLeft(
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 1500),
      child: Glowstone(
        radius: 20,
        color: Colors.tealAccent.withOpacity(0.7),
        child: Image.asset(
          "assets/images/money-bag.png",
          height: 50.h,
          width: 50.w,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget customText() {
    return FadeInRight(
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 1500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GlowText(
            "Saima's Makeover",
            style: GoogleFonts.caveat(
              color: Colors.white,
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
