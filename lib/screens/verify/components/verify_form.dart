import 'package:flutter/material.dart';
import 'package:neredeium_demo/components/default_button.dart';
import 'package:neredeium_demo/screens/home_page_screen/home_page_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class VerifyForm extends StatefulWidget {
  @override
  _VerifyFormState createState() => _VerifyFormState();
}

class _VerifyFormState extends State<VerifyForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;



  @override
  void initState(){
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose(){
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String value , FocusNode focusNode}){
    if(value.length == 1){
      focusNode.requestFocus();
    }
  }


  @override
  Widget build(BuildContext context) {

    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getPropertionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  decoration:verifyInputDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    nextField(value: value,focusNode: pin2FocusNode);
                  },

                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  decoration:verifyInputDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    nextField(value: value,focusNode: pin3FocusNode);
                  },

                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  decoration:verifyInputDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {nextField(value: value,focusNode: pin4FocusNode);},

                ),
              ),
              SizedBox(
                width: getPropertionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 24),
                  decoration:verifyInputDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {pin4FocusNode.unfocus();},

                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight*0.15 ,),
          DefaultButton(text: "Back to Home Page",
            press: (){

                Navigator.pushNamed(context, HomePageScreen.routName);


            },)
        ],
      ),
    );
  }
}
