// ignore_for_file: file_names

import 'package:expanse_manager/Views/Styles/AddSellPageStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:intl/intl.dart';

class AddSellPage extends StatefulWidget {
  const AddSellPage({super.key});

  @override
  State<AddSellPage> createState() => _AddSellPageState();
}

class _AddSellPageState extends State<AddSellPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController totalAmountController = TextEditingController();
  String day = "";
  String month = "";
  String year = "";
  String fullDate = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    descriptionController.dispose();
    totalAmountController.dispose();
  }

  void setDate() {
    setState(() {
      day = DateFormat.d().format(DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                titleText("Title"),
                customField("Enter title", titleController),
                titleText("Description"),
                descriptionField("Description", descriptionController),
                titleText("Total amount"),
                customField("Enter total amount", totalAmountController),
                SizedBox(height: 160.h),
                GestureDetector(
                  onTap: () {
                    debugPrint(titleController.text);
                    debugPrint(descriptionController.text);
                    debugPrint(totalAmountController.text);
                    setDate();
                  },
                  child: addSellButton(),
                ),
                SizedBox(height: 70.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
