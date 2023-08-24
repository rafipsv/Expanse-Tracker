// ignore_for_file: file_names

import 'package:expanse_manager/Views/Pages/Add%20Sell%20Page/AddSellPage.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 16, 170, 134),
      tooltip: "Add Expanse",
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const AddSellPage();
            },
          ),
        );
      },
    );
  }
}
