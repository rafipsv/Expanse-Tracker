// ignore_for_file: file_names

import 'package:expanse_manager/Pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int index = 0;
  List<Widget> pages = [
    const HomePage(),
    const Center(
      child: Text(
        "Search Page",
        style: TextStyle(color: Colors.white),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 9, 9, 22),
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedIconTheme: const IconThemeData(
          color: Color(0xff35a79c),
        ),
        selectedItemColor: const Color(0xff35a79c),
        unselectedItemColor: Colors.white,
        unselectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        items: const [
          BottomNavigationBarItem(icon: FaIcon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: FaIcon(Icons.search), label: "Search"),
        ],
      ),
    );
  }
}
