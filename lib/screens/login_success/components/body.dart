import 'package:flutter/material.dart';
import 'package:neredeium_demo/components/default_button.dart';
import 'package:neredeium_demo/screens/home_page_screen/home_page_screen.dart';
import 'package:neredeium_demo/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.5,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),

        Text(
          "Login Succes",
          style: TextStyle(
              fontSize: getPropertionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Spacer(),
        GestureDetector(
          child: SizedBox(
            width: SizeConfig.screenWidth*0.6,
            child: DefaultButton(
              text: "Back to Home",
              press: (){
                  Navigator.pushNamed(context, HomePageScreen.routName);
              },
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
