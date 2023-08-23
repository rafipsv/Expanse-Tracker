// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return index % 2 == 0
              ? FadeInLeft(
                  duration: const Duration(milliseconds: 1700),
                  child: detailsBox("Buy Shoes", "1000", "23/08/2023", context),
                )
              : FadeInRight(
                  duration: const Duration(milliseconds: 1700),
                  child: detailsBox("Buy Shoes", "1000", "23/08/2023", context),
                );
        },
      ),
    );
  }

  Widget detailsBox(
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
              customText(
                false,
                title,
              ),
              Row(
                children: [
                  customText(
                    true,
                    "Amount: $amount",
                  ),
                  SizedBox(width: 140.w),
                  dateText(date)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget customText(bool isAmount, String title) {
    return GlowText(
      title,
      style: GoogleFonts.caveat(
        color: isAmount ? Colors.white : Colors.white.withOpacity(0.8),
        fontSize: 20.sp,
        fontWeight: isAmount ? FontWeight.w800 : FontWeight.w700,
      ),
    );
  }

  Widget dateText(String title) {
    return GlowText(
      title,
      style: GoogleFonts.caveat(
        color: Colors.white.withOpacity(0.5),
        fontSize: 15.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
