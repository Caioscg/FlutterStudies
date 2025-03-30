import 'package:flutter/material.dart';
import 'package:navigation/pages/home.dart';
import 'package:navigation/pages/profile.dart';
import 'package:navigation/pages/settings.dart';

// ignore: must_be_immutable
class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  //* this is to keep track of the current page
  int selectedIndex = 0;

  //* this method updates the index (current page)
  void navigateFunction(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //* this are the pages of the app
  final List pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("1st Page")),
        backgroundColor: Colors.amber[500],
      ),

      body: pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateFunction,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}