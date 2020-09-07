import 'package:flutter/material.dart';

import 'components/body.dart';


class VerifyScreen extends StatelessWidget {
  static String routeName = "verify";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Verify Account"),
        ),
      ),
      body: Body(),
    );
  }
}
