import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Center(child: Text('Home Page')),
        backgroundColor: Colors.cyan[100],
      ),*/
      backgroundColor: Colors.lightGreenAccent,
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}