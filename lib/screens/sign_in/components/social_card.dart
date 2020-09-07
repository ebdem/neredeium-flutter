import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key key, this.icon, this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getPropertionateScreenWidth(10)),
        padding: EdgeInsets.all(getPropertionateScreenWidth(12)),
        height: getPropertionateScreenHeight(55),
        width: getPropertionateScreenWidth(55),
        decoration: BoxDecoration(color: Color(0XFFF5F6F9),
            shape: BoxShape.circle),
        child: SvgPicture.asset(icon),

      ),
    );
  }
}
