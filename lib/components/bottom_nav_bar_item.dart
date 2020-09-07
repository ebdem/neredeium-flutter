import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neredeium_demo/screens/home_page_screen/home_page_screen.dart';
import 'package:neredeium_demo/screens/profile/profile_screen.dart';
import 'package:neredeium_demo/screens/settings/settings_screen.dart';

import '../constants.dart';

class BottomNAvBar extends StatelessWidget {
  const BottomNAvBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 80,
      color: Colors.white24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: "Home",
            svgSrc: "assets/icons/Discover.svg",
            isActive: true,
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HomePageScreen();
              }));
            },
          ),
          BottomNavItem(
            title: "Profile",
            svgSrc: "assets/icons/Shop Icon.svg",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ProfileScreen();
              }));
            },

          ),
          BottomNavItem(
            title: "Settings",
            svgSrc: "assets/icons/Settings.svg",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SettingsScreen();
              }));
            },
          ),

        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;

  const BottomNavItem({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            svgSrc,
            color: isActive ? kPrimaryColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kPrimaryColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
