import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(errors.length, (index) => formErrorText(error: errors[index]))
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/Error.svg",
          height: getPropertionateScreenHeight(14),
          width: getPropertionateScreenWidth(14),),
        SizedBox(width: getPropertionateScreenWidth(10),),
        Text(error),
      ],
    );
  }
}