import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Center(child: Text('Settings Page')),
        backgroundColor: Colors.cyan[100],
      ),*/
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text("Settings Page"),
      ),
    );
  }
}