import 'package:flutter/material.dart';
import 'package:tuto_app/navpages/bar_item_page.dart';
import 'package:tuto_app/navpages/my_page.dart';
import 'package:tuto_app/navpages/search_page.dart';
import 'package:tuto_app/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItemPage(), SearchPage(), MyPage()];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 0,
          onTap: onTap,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_outlined), label: "Bar"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Search"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profile"),
          ]),
    );
  }
}
