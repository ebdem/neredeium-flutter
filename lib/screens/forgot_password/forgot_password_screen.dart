import 'package:flutter/material.dart';
import 'package:neredeium_demo/screens/forgot_password/components/body.dart';

class ForgotPassword extends StatelessWidget{
  static String routName = "/forgot_password";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Forgot Password"),),
      ),
      body: Body(),
    );
  }
  
}