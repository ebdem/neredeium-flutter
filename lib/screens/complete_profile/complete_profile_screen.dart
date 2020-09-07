import 'package:flutter/material.dart';

import 'components/body.dart';


class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Complete Profile"),),
      ),
      body: Body(),
    );
  }
}
