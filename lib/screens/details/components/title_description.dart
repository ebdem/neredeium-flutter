import 'package:flutter/material.dart';

class Title_Description extends StatelessWidget {
  const Title_Description({
    Key key, this.name, this.age, this.state, this.desc,
  }) : super(key: key);

  final String name;
  final String age;
  final String state;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$name\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "$state\n",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextSpan(
                  text: "$age\n ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Text("$desc")
        ],
      ),
    );
  }
}
