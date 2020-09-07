import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neredeium_demo/components/bottom_nav_bar_item.dart';
import 'package:neredeium_demo/components/search_bar.dart';
import 'package:neredeium_demo/constants.dart';
import 'package:neredeium_demo/screens/details/details_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNAvBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                image: DecorationImage(
                  image: AssetImage("assets/images/meditation_bg.png"),
                  fit: BoxFit.fitWidth,
                )),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "NEREDEİUM",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Where are you!!!",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: size.width * .6,
                        child: Text(
                            "Buralardan bir atlı geçti beni benden aldı geçti")),
                    SizedBox(
                        width: size.width * .6,
                        height: size.height * 0.2,
                        child: SearchBar()),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        onTabUser(
                          sessionNam:"Ebubekir",
                          isDone: true,
                          press: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));},

                        ),
                        onTabUser(
                          sessionNam:"Ramazan",
                          press: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));},

                        ),
                        onTabUser(
                          sessionNam:"Bilal",
                          press: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));},

                        ),
                        onTabUser(
                          sessionNam:"Halit",
                          press: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));},

                        ),
                        onTabUser(
                          sessionNam:"Ali İhsan",
                          press: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));},

                        ),
                        onTabUser(
                          sessionNam:"Samir",
                          press: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));},

                        ),

                        onTabUser(
                          sessionNam:"Büşra",
                          press: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));},

                        ),onTabUser(
                          sessionNam:"Nermin",
                          press: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));},

                        ),



                      ],

                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class onTabUser extends StatelessWidget {
  final int person;
  final bool isDone;
  final String sessionNam;

  final Function press;

  const onTabUser({
    Key key,
    this.person,
    this.isDone = false, this.sessionNam, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(15),

        child: Container(
          width: constraint.maxWidth / 2 - 10,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 50,
                  spreadRadius: -13,
                ),
              ],
              color: Colors.white),
          child: Material(
            color: Colors.brown,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                          color: isDone ? kPrimaryColor : Colors.white,
                          shape: BoxShape.circle,
                        border: Border.all(color: kPrimaryColor),
                      ),
                      child: Icon(
                        Icons.account_circle,
                        color:isDone ? Colors.white : kPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      " $sessionNam",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
