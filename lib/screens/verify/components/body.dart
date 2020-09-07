import 'package:flutter/material.dart';
import 'package:neredeium_demo/components/default_button.dart';
import 'package:neredeium_demo/constants.dart';
import 'package:neredeium_demo/screens/verify/components/verify_form.dart';
import 'package:neredeium_demo/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [Text(
              "Account Verify",
              style: headingStyle,
            ),
              SizedBox(height: SizeConfig.screenHeight*0.05,),
              Text("We sent your code to Halit ATAMAN"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight*0.15,),
              VerifyForm(),
              SizedBox(height: SizeConfig.screenHeight*0.1,),
              GestureDetector(
                onTap: (){

                },
                  child:
                  Text("Re-Send Verify Code",style: TextStyle(decoration: TextDecoration.underline),)),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This code will expired in "),
            TweenAnimationBuilder(
              tween: Tween(begin: 30.0, end: 0),
              duration: Duration(seconds: 30),
              builder: (context,value,child) => Text("00:${value.toInt()}",style: TextStyle(
                color: kPrimaryColor
              ),),
              onEnd: (){},
            )
          ],
        );
  }
}


