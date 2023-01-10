
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_gender_content.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: Color.fromARGB(255, 48, 47, 47),
                cardChild: CardGenderContent(
                  icon: FontAwesomeIcons.mars,
                  text: 'MALE'
                ),
              )),
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: Color.fromARGB(255, 48, 47, 47),
                cardChild: CardGenderContent(
                  icon: FontAwesomeIcons.venus,
                  text: 'FEMALE'
                ),
              ))
            ],
          )),
          Expanded(child: Expanded(
            child: ReusableCard(
              colour: Color.fromARGB(255, 48, 47, 47),
            )
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: Color.fromARGB(255, 48, 47, 47),
              )),
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: Color.fromARGB(255, 48, 47, 47),
              ))
            ],
          )),
        ],
        
      ),
    );
  }
}

