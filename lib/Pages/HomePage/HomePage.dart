// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:expanse_manager/Pages/HomePage/Widgets/FloatingButton.dart';
import 'package:expanse_manager/Pages/HomePage/Widgets/HomeBody.dart';
import 'package:expanse_manager/Pages/HomePage/Widgets/HomeDetailsBox.dart';
import 'package:expanse_manager/Pages/HomePage/Widgets/HomeTop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const FloatingButton(),
        body: Column(
          children: [
            SizedBox(height: 20.h),
            const HomeTop(),
            SizedBox(height: 40.h),
            const HomeDetailsBox(),
            SizedBox(height: 25.h),
            customText(),
            SizedBox(height: 15.h),
            const HomeBody()
          ],
        ),
      ),
    );
  }

  Widget customText() {
    return FadeIn(
      delay: const Duration(milliseconds: 1700),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w),
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
      ),
    );
  }
}
