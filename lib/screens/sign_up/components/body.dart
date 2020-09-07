import 'package:flutter/material.dart';
import 'package:neredeium_demo/components/costum_surffix_icon.dart';
import 'package:neredeium_demo/components/default_button.dart';
import 'package:neredeium_demo/components/form_error.dart';
import 'package:neredeium_demo/screens/sign_in/components/social_card.dart';
import 'package:neredeium_demo/screens/sign_up/components/sign_up_form.dart';
import 'package:neredeium_demo/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*0.02,),
            Text("Register Account",
            style:headingStyle,
            ),
            Text("Complete Details or \n contact to Ebubekir DEMIRAY",
                textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight*0.05,),
            SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(icon: "assets/icons/facebook-2.svg",
                  press: () {},),
                SocialCard(icon: "assets/icons/google-icon.svg",
                  press: () {},),
                SocialCard(icon: "assets/icons/twitter.svg",
                  press: () {},),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight*0.01,),
            Text("Confirm that you agree\n with Term and Condition",
            textAlign: TextAlign.center,),
            SizedBox(height: SizeConfig.screenHeight*0.08,),
          ],
        ),
      ),
    );
  }

}
