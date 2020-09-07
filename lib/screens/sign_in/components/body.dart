import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neredeium_demo/components/costum_surffix_icon.dart';
import 'package:neredeium_demo/components/default_button.dart';
import 'package:neredeium_demo/components/form_error.dart';
import 'package:neredeium_demo/components/no_account_text.dart';
import 'package:neredeium_demo/constants.dart';
import 'package:neredeium_demo/screens/forgot_password/forgot_password_screen.dart';
import 'package:neredeium_demo/screens/sign_in/components/social_card.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight*0.04,),
                Text("Welcome Back",style: TextStyle(
                  color: Colors.black,
                  fontSize: getPropertionateScreenWidth(28),
                  fontWeight: FontWeight.bold,

                ),),
                Text("Sign in with your phone and password \nor continue with Ebubekir Demiray",
                textAlign: TextAlign.center,),
                SizedBox(height: SizeConfig.screenHeight*0.08,),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight*0.08,),
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
                SizedBox(height: getPropertionateScreenHeight(20),),
                NoAccountText(),



              ],
            ),
          ),
        ),
      ),


    );
  }

}








