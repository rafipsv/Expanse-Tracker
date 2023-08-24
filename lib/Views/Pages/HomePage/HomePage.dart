// ignore_for_file: file_names

import 'package:expanse_manager/Views/Styles/HomePageStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Widgets/FloatingButton.dart';
import 'Widgets/HomeBody.dart';
import 'Widgets/HomeDetailsBox.dart';
import 'Widgets/HomeTop.dart';

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
