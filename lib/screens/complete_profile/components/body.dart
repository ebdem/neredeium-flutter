import 'package:flutter/material.dart';
import 'package:neredeium_demo/components/costum_surffix_icon.dart';
import 'package:neredeium_demo/components/default_button.dart';
import 'package:neredeium_demo/components/form_error.dart';
import 'package:neredeium_demo/constants.dart';
import 'package:neredeium_demo/screens/complete_profile/components/complete_profile_form.dart';
import 'package:neredeium_demo/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:SizeConfig.screenHeight*0.02,),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete your profile \ndetail or continue Ebubekir DEMİRAY",
                textAlign: TextAlign.center,
              ),
              SizedBox(height:SizeConfig.screenHeight*0.05 ,),
              CompleteProfileForm(),
              SizedBox(height: getPropertionateScreenHeight(30),),
              Text("Continue agree confirm Term and Condition\nEbubekir Demiray",textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
    );
  }
}


