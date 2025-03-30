import 'package:flutter/material.dart';
import 'package:navigation/pages/BottomNav.dart';
//import 'package:navigation/pages/ListTile.dart';
import 'package:navigation/pages/home.dart';
import 'package:navigation/pages/profile.dart';
import 'package:navigation/pages/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
      routes: {
        '/home' :(context) => HomePage(),
        '/settings':(context) => SettingsPage(),
        '/profile':(context) => ProfilePage(),
      },
    );
  }
}