import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CostumSurffixIcon extends StatelessWidget {
  const CostumSurffixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.fromLTRB(0,
          getPropertionateScreenWidth(20),
          getPropertionateScreenWidth(20),
          getPropertionateScreenWidth(20)),
      child: SvgPicture.asset(svgIcon,
        height:getPropertionateScreenWidth(18) ,),
    );
  }
}
