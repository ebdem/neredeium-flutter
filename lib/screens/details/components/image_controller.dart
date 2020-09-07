import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class Image_and_Icons extends StatelessWidget {
  const Image_and_Icons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          SizedBox(
            height: size.height*0.8,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            padding: EdgeInsets.symmetric(horizontal:10 ),
                            icon: SvgPicture.asset("assets/icons/Back ICon.svg"),
                            onPressed: (){
                              Navigator.pop(context);
                            },),
                        ),
                        Spacer(),
                        IconCard(icon: "assets/icons/Conversation.svg",),
                        IconCard(icon: "assets/icons/Camera Icon.svg",),
                        IconCard(icon: "assets/icons/facebook-2.svg",),
                        IconCard(icon: "assets/icons/twitter.svg",),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height*0.8,
                  width: size.width*0.75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0,10),
                          blurRadius: 60,
                          color: kPrimaryColor.withOpacity(0.29),
                        )
                      ],
                      image: DecorationImage(

                        alignment: Alignment.centerLeft,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img.png"),
                      )
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

