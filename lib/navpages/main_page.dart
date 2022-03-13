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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          onTap: onTap,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.apps), label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_sharp), label: "Bar"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Serach"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Me"),
          ]),
    );
  }
}
