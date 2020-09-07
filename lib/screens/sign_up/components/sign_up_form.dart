import 'package:flutter/material.dart';
import 'package:neredeium_demo/components/costum_surffix_icon.dart';
import 'package:neredeium_demo/components/default_button.dart';
import 'package:neredeium_demo/components/form_error.dart';
import 'package:neredeium_demo/screens/complete_profile/complete_profile_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirm_password;
  int phone;

  final List<String> errors =[];

  void addError({String error}){
    if(!errors.contains(error)){
      setState(() {
        errors.add(error);
      });
    }
  }
  void removeError({String error}){
    if(errors.contains(error)){
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(20)),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getPropertionateScreenHeight(30),),
            buildPasswordFormField(),
            SizedBox(height: getPropertionateScreenHeight(30),),
            buildConfPasswordFormField(),
            SizedBox(height: getPropertionateScreenHeight(30),),
            buildPhoneFormField(),
            FormError(errors:errors,),
            SizedBox(height: getPropertionateScreenHeight(40),),
            DefaultButton(
              text: "Continue",
              press: (){
                if(_formKey.currentState.validate()){
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);

                }
              },
            )

          ],
        ),
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phone = int.tryParse(newValue) ,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPhoneNullError)){
          setState(() {
            errors.remove(kPhoneNullError);

          });

        }else if (value.length >= 11  &&
            errors.contains(kInvalidPhoneError)){
          setState(() {
            errors.remove(kInvalidPhoneError);
          });
        }
        return null;

      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kPhoneNullError)){
          setState(() {
            errors.add(kPhoneNullError);

          });
          return "";
        }else if (value.length < 11  &&
            !errors.contains(kInvalidPhoneError)){
          setState(() {
            errors.add(kInvalidPhoneError);
          });
          return "";
        }
        return null;

      },


      decoration: InputDecoration(
        labelText: "Phone",
        hintText: "Enter Your Phone",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CostumSurffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),

      ),
    );
  }

  TextFormField buildConfPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue,
      onChanged: (value){
        if (password == confirm_password){
          removeError(error: kMatchPassError);
        }
        return null;

      },
      validator: (value){
        if(value.isEmpty ){
          return "";
        }else if (password != value){
          addError(error: kMatchPassError);
          return "";

        }
        return null;

      },

      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CostumSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),

      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPassNullError)){
          setState(() {
            errors.remove(kPassNullError);

          });

        }else if (value.length >= 8  &&
            errors.contains(kShortPassError)){
          setState(() {
            errors.remove(kShortPassError);
          });

        }
        password = value;
        return null;

      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kPassNullError)){
          setState(() {
            errors.add(kPassNullError);

          });
          return "";
        }else if (value.length < 8  &&
            !errors.contains(kShortPassError)){
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;

      },

      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CostumSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),

      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidationRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidationRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CostumSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}