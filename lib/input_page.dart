
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_gender_content.dart';
import 'reusable_card.dart';

const activeCardColour = Color.fromARGB(255, 31, 30, 30);
const inActiveCardColour = Color.fromARGB(255, 50, 49, 49);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  Male,
  Female
}
class _InputPageState extends State<InputPage> {
  Color maleCardColour = inActiveCardColour;
  Color femaleCardColour = inActiveCardColour;
  Gender gender;

  void updateColour(Gender gender) {
    // 1 == male
    // 2 == female
    if (gender == 1) {
      if (maleCardColour == inActiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inActiveCardColour;
      } else {
        maleCardColour = inActiveCardColour;
      }
    } 
    
    if (gender == 2) {
      if (femaleCardColour == inActiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inActiveCardColour;
      } else {
        femaleCardColour = inActiveCardColour;
      }
    }
  }

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
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      gender = Gender.Male;
                    });
                  },
                  width: 170.0,
                  colour: gender == Gender.Male ? activeCardColour : inActiveCardColour,
                  cardChild: CardGenderContent(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE'
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      gender = Gender.Female;
                    });
                  },
                  width: 170.0,
                  colour: gender == Gender.Female ? activeCardColour : inActiveCardColour,
                  cardChild: CardGenderContent(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE'
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              // width: double.infinity,
              colour: inActiveCardColour,
              cardChild: Container(),
            )
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: inActiveCardColour,
                cardChild: Container(),
              )),
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: inActiveCardColour,
                cardChild: Container(),
              ))
            ],
          )),
        ],
        
      ),
    );
  }
}

