// ignore_for_file: file_names

import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:expanse_manager/Pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glowstone/glowstone.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            splashLogo(),
            SizedBox(height: 50.h),
            customText(),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

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

  Widget customText() {
    return FadeInUp(
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 1000),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Expanse Tracker",
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
}
