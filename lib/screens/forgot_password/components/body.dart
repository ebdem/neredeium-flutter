
import 'package:flutter/material.dart';
import 'package:neredeium_demo/components/costum_surffix_icon.dart';
import 'package:neredeium_demo/components/default_button.dart';
import 'package:neredeium_demo/components/form_error.dart';
import 'package:neredeium_demo/components/no_account_text.dart';
import 'package:neredeium_demo/screens/forgot_password/forgot_password_screen.dart';
import 'package:neredeium_demo/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.04,),

              GestureDetector(

                child: Text("Forgot Password",
                style: TextStyle(
                  fontSize: getPropertionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Text("Please Enter Your Phone \nyou link to return your account!!",
              textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screenHeight*0.1,),

              ForgotPassForm(),

            ],
          ),
        ),
      ),
    );
  }

}

class ForgotPassForm extends StatefulWidget{
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState()  ;

}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        children: [
        TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email =newValue,
        onChanged: (value){
          if(value.isNotEmpty && errors.contains(kEmailNullError)){
            setState(() {
              errors.remove(kEmailNullError);

            });
          }else if (emailValidationRegExp.hasMatch(value) &&
              errors.contains(kInvalidEmailError)){
            setState(() {
              errors.remove(kInvalidEmailError);
            });
          }
          return null;

        },
        validator: (value){
          if(value.isEmpty && !errors.contains(kEmailNullError)){
            setState(() {
              errors.add(kEmailNullError);

            });
          }else if (!emailValidationRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)){
            setState(() {
              errors.add(kInvalidEmailError);
            });
          }
          return null;

        },
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter Your Email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CostumSurffixIcon(
            svgIcon: "assets/icons/Mail.svg",
          ),

        ),
      ),
          SizedBox(height: getPropertionateScreenHeight(30),),
          FormError(errors:errors,),
          SizedBox(height: SizeConfig.screenHeight*0.1,),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_formKey.currentState.validate()){

              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight*0.1,),

          NoAccountText(),
        ],

      ),

    );
  }
}


