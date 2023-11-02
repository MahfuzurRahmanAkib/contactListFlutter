import 'package:contact_list/screens/HistoryScreens.dart';
import 'package:contact_list/screens/HomeScreens.dart';
import 'package:contact_list/screens/TransferScreens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ProfileScreens.dart';
import 'StatScreen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyBottomNavigationBarState();
  }
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _index = 0;
  final screens = [
    const Home(),
    const Transfer(),
    const History(),
    const StatScreen(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.r),
        topRight: Radius.circular(20.r),
      ),
      child: Scaffold(
        body: screens[_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  color: _index == 0 ? const Color(0xFF8231F7) : Colors.transparent,
                  child: Icon(
                    Icons.home_filled,
                    color: _index == 0 ? Colors.white : Colors.black12,
                  ),
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: _index == 1 ? const Color(0xFF8231F7) : Colors.transparent,
                  child: Icon(
                    Icons.share_sharp,
                    color: _index == 1 ? Colors.white : Colors.black12,
                  ),
                ),
              ),
              label: "Transfer",
            ),
            BottomNavigationBarItem(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: _index == 2 ? const Color(0xFF8231F7) : Colors.transparent,
                  child: Icon(
                    Icons.history,
                    color: _index == 2 ? Colors.white : Colors.black12,
                  ),
                ),
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: _index == 3 ? const Color(0xFF8231F7) : Colors.transparent,
                  child: Icon(
                    Icons.pie_chart_sharp,
                    color: _index == 3 ? Colors.white : Colors.black12,
                  ),
                ),
              ),
              label: "Statistics",
            ),
            BottomNavigationBarItem(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: _index == 4 ? const Color(0xFF8231F7) : Colors.transparent,
                  child: Icon(
                    Icons.person,
                    color: _index == 4 ? Colors.white : Colors.black12,
                  ),
                ),
              ),
              label: "Profile",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF6400F4),
          unselectedItemColor: Colors.black54,
          selectedFontSize: 12.sp,
          unselectedFontSize: 12.sp,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedIconTheme: const IconThemeData(color: Colors.black54),
          selectedIconTheme: const IconThemeData(color: Color(0xFF6400F4)),
          iconSize: 35,
        ),
      ),
    );
  }
}
