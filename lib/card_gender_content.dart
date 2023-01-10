import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardGenderContent extends StatelessWidget {
  const CardGenderContent({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style:  TextStyle(
            fontSize: 18.0,
            color: Color.fromARGB(255, 108, 105, 105),
          )
        )
      ],
    );
  }
}