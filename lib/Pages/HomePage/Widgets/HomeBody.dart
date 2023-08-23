// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../Styles/HomePageStyles.dart';

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
                  child:
                      recentSellBox("Buy Shoes", "1000", "23/08/2023", context),
                )
              : FadeInRight(
                  duration: const Duration(milliseconds: 1700),
                  child:
                      recentSellBox("Buy Shoes", "1000", "23/08/2023", context),
                );
        },
      ),
    );
  }
}
