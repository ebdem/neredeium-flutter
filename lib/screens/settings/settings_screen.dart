import 'package:flutter/material.dart';
import 'package:neredeium_demo/components/bottom_nav_bar_item.dart';

class SettingsScreen extends StatelessWidget {
  static String routName = "/settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      bottomNavigationBar: BottomNAvBar(),
    );
  }
}
