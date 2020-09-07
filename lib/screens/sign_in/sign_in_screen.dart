import 'package:flutter/material.dart';
import 'package:neredeium_demo/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget{
  static String routName = "/sign_in";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Center(child:  Text("Sign In", ))
      ),
      body: Body(),
    );
  }

}