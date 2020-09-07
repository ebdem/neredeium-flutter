import 'package:flutter/material.dart';

import 'package:neredeium_demo/screens/splash/components/body.dart';
import 'package:neredeium_demo/size_config.dart';

class Splashscreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
  
}