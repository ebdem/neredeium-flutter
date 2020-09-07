import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neredeium_demo/constants.dart';

import 'icon_card.dart';
import 'image_controller.dart';
import 'title_description.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [Image_and_Icons(size: size),
          Title_Description(
            name: "Ebubekir",
            age: "21",
            desc: "Lorem Ipsum, dizgi ve \nbaskı endüstrisinde\n"
                " kullanılan mıgır \nmetinlerdir. Lorem Ipsum\n,"
                " adı bilinmeyen bir\n matbaacının bir hurufat\n"
                " numune kitabı \noluşturmak üzere bir yazı\n"
                " galerisini alarak \nkarıştırdığı 1500'lerden\n"
                " beri endüstri \nstandardı sahte metinler olarak\n "
                "kullanılmıştır.",
            state: "Öğrenci",
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              SizedBox(
                width: size.width /2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                  ),
                  color: kPrimaryColor,
                  onPressed: (){

                  },
                  child: Text(
                    "Aktif Lokasyonları Gör",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: size.width /2,
                  height: 84,

                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                    ),
                    onPressed: (){},
                    child: Text("Say Hellöööö"),
                    color: Colors.teal,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 9,
          )
        ],
      ),
    );
  }
}

