// ignore_for_file: file_names

import 'package:expanse_manager/Pages/HomePage/Widgets/FloatingButton.dart';
import 'package:expanse_manager/Pages/HomePage/Widgets/HomeBody.dart';
import 'package:expanse_manager/Pages/HomePage/Widgets/HomeDetailsBox.dart';
import 'package:expanse_manager/Pages/HomePage/Widgets/HomeTop.dart';
import 'package:expanse_manager/Styles/HomePageStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            homeRecentSellText(),
            SizedBox(height: 15.h),
            const HomeBody()
          ],
        ),
      ),
    );
  }
}
