import 'package:flutter/material.dart';
import 'package:neredeium_demo/components/bottom_nav_bar_item.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      bottomNavigationBar: BottomNAvBar(),
    );
  }
}
