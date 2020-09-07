import 'package:flutter/widgets.dart';
import 'package:neredeium_demo/screens/complete_profile/complete_profile_screen.dart';
import 'package:neredeium_demo/screens/details/details_screen.dart';
import 'package:neredeium_demo/screens/forgot_password/forgot_password_screen.dart';
import 'package:neredeium_demo/screens/home_page_screen/home_page_screen.dart';
import 'package:neredeium_demo/screens/login_success/login_success_screen.dart';
import 'package:neredeium_demo/screens/profile/profile_screen.dart';
import 'package:neredeium_demo/screens/settings/settings_screen.dart';
import 'package:neredeium_demo/screens/sign_in/sign_in_screen.dart';
import 'package:neredeium_demo/screens/sign_up/sign_up_screen.dart';
import 'package:neredeium_demo/screens/splash/splash_screen.dart';
import 'package:neredeium_demo/screens/verify/verify.dart';

final Map<String, WidgetBuilder> routes = {
  Splashscreen.routeName:(context) => Splashscreen(),
  SignInScreen.routName:(context) => SignInScreen(),
  ForgotPassword.routName:(context) => ForgotPassword(),
  LoginSuccessScreen.routeName:(context) => LoginSuccessScreen(),
  HomePageScreen.routName:(context) => HomePageScreen(),
  SignUpScreen.routeName:(context) => SignUpScreen(),
  CompleteProfileScreen.routeName:(context) => CompleteProfileScreen(),
  VerifyScreen.routeName:(context) => VerifyScreen(),
  SettingsScreen.routName:(context) => SettingsScreen(),
  ProfileScreen.routeName:(context) => ProfileScreen(),
  DetailsScreen.routeName:(context) => DetailsScreen(),
};