import 'package:flutter/material.dart';

import 'components/body.dart';

class SignUpScreen extends StatelessWidget{
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child:  Text("Sign Up", ))
      ),
      body: Body(),
    );
  }

}