import 'package:flutter/material.dart';
import 'package:neredeium_demo/screens/home_page_screen/components/body.dart';

class HomePageScreen extends StatelessWidget{
  static String routName = "/home_page";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("HOME PAGE",style: TextStyle(color: Colors.black),),),backgroundColor: Colors.deepOrange,
      ),
      body: Body(),
    );
  }

}