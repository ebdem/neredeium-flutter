import 'package:flutter/material.dart';
import 'package:neredeium_demo/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor =LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E),Color(0xFFFF7643)]
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(microseconds: 400);

//Form Error
final RegExp emailValidationRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your Email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your Password";
const String kShortPassError = "Password is to Short!!";
const String kMatchPassError = "Password dont Match!!!";

final headingStyle = TextStyle(
    fontSize: getPropertionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5,
);

const String kPhoneNullError = "Please Enter Your Phone";
const String kInvalidPhoneError = "Please Enter Valid Phone";

//Name Content
const String kNameNullError = "Please Enter your Name";
const String kAddressNullError = "Please Enter your Adress";

final verifyInputDecoration =  InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: getPropertionateScreenWidth(15)),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder()
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: kTextColor),
  );
}



