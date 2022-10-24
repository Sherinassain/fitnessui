import 'package:fitnessui/pages/bottomtabs/diary_page.dart';
import 'package:fitnessui/pages/bottomtabs/home_page.dart';
import 'package:fitnessui/pages/bottomtabs/wallet_page.dart';
import 'package:fitnessui/pages/bottomtabs/plans_page.dart';
import 'package:fitnessui/pages/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Navigation_page extends StatefulWidget {
  Navigation_page({super.key});

  @override
  State<Navigation_page> createState() => _Navigation_pageState();
}

class _Navigation_pageState extends State<Navigation_page> {
  int _selectedindex = 0;

  final List pages = [
    Home_page(),
    Plans_page(),
    Wallet_page(),
    Diary_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedLabelStyle: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600),
            backgroundColor: constantwhite,
            selectedItemColor: constantblack,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedindex,
            onTap: (value) {
              setState(() {
                _selectedindex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.published_with_changes_outlined),
                  label: 'Plans'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: 'Me'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books), label: 'Diary')
            ]),
        body: pages[_selectedindex]);
  }
}
