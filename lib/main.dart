import 'package:flutter/material.dart';
import 'package:neredeium_demo/routs.dart';
import 'package:neredeium_demo/screens/splash/splash_screen.dart';
import 'package:neredeium_demo/theme.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:theme(),
      //home: Splashscreen(),
      initialRoute: Splashscreen.routeName,
      routes: routes,


    );
  }
}



