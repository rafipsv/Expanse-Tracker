// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glowstone/glowstone.dart';
import 'package:google_fonts/google_fonts.dart';

Widget topLogo() {
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

Widget companyName() {
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

Widget homeDetailsBoxTitle(bool isAmount, String title) {
  return GlowText(
    title,
    style: GoogleFonts.caveat(
      color: isAmount ? Colors.white : Colors.white.withOpacity(0.8),
      fontSize: 25.sp,
      fontWeight: isAmount ? FontWeight.w800 : FontWeight.w700,
    ),
  );
}

Widget homeRecentSellText() {
  return FadeIn(
    delay: const Duration(milliseconds: 1700),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GlowText(
          "Recent Sells",
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

Widget recentSellBox(
  String title,
  String amount,
  String date,
  BuildContext context,
) {
  return Container(
    height: 60.h,
    width: MediaQuery.of(context).size.width,
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.symmetric(
      horizontal: 20.w,
      vertical: 15.h,
    ),
    padding: EdgeInsets.only(
      left: 20.w,
      right: 20.w,
      top: 5.h,
    ),
    decoration: BoxDecoration(
      color: const Color(0xff0B0C1E),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade500,
          spreadRadius: 1,
          blurRadius: 10,
        ),
      ],
    ),
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            recentSellBoxCustomText(
              false,
              title,
            ),
            Row(
              children: [
                recentSellBoxCustomText(
                  true,
                  "Amount: $amount",
                ),
                SizedBox(width: 140.w),
                recentSellBoxDateText(date)
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget recentSellBoxCustomText(bool isAmount, String title) {
  return GlowText(
    title,
    style: GoogleFonts.caveat(
      color: isAmount ? Colors.white : Colors.white.withOpacity(0.8),
      fontSize: 20.sp,
      fontWeight: isAmount ? FontWeight.w800 : FontWeight.w700,
    ),
  );
}

Widget recentSellBoxDateText(String title) {
  return GlowText(
    title,
    style: GoogleFonts.caveat(
      color: Colors.white.withOpacity(0.5),
      fontSize: 15.sp,
      fontWeight: FontWeight.w700,
    ),
  );
}
