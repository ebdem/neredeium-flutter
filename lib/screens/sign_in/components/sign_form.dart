import 'package:flutter/material.dart';
import 'package:neredeium_demo/components/costum_surffix_icon.dart';
import 'package:neredeium_demo/components/default_button.dart';
import 'package:neredeium_demo/components/form_error.dart';
import 'package:neredeium_demo/screens/forgot_password/forgot_password_screen.dart';
import 'package:neredeium_demo/screens/login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget{
  @override
  _SignFormState createState() => _SignFormState();

}

class  _SignFormState extends State<SignForm>{
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  int phone;
  final List<String> errors = [];
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
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Column(children: [
        buildEmailFormField(),
        SizedBox(height: getPropertionateScreenHeight(30),),
        buildPasswordFormField(),
        SizedBox(height: getPropertionateScreenHeight(30),),
        buildPhoneFormField(),
        SizedBox(height: getPropertionateScreenHeight(20),),
        Row(
          children: [
            Checkbox(
              value: remember,
              activeColor: kPrimaryColor,
              onChanged: (value) {
                setState(() {
                  remember = value;
                });
              },
            ),
            Text("Remember me"),
            Spacer(),
            GestureDetector(
              onTap: ()=> Navigator.pushNamed(context, ForgotPassword.routName),
              child: Text("Forgot Password",
                style: TextStyle(
                    decoration: TextDecoration.underline
                ),),
            ),
          ],
        ),
        FormError(errors: errors),

        SizedBox(height: getPropertionateScreenHeight(20),),
        DefaultButton(
          text: "Continue",
          press: (){
            if(_formKey.currentState.validate()  ){
              _formKey.currentState.save();
              Navigator.pushNamed(context, LoginSuccessScreen.routeName);
            }

          },
        )
      ],),
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
          return "";
        }else if (value.length >= 11  &&
            errors.contains(kInvalidPhoneError)){
          setState(() {
            errors.remove(kInvalidPhoneError);
          });
          return "";
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


  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CostumSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
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
