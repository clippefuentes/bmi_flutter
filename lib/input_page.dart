
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'card_gender_content.dart';
import 'reusable_card.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  Male,
  Female
}
class _InputPageState extends State<InputPage> {
  Color maleCardColour = kInActiveCardColour;
  Color femaleCardColour = kInActiveCardColour;
  Gender gender;
  double heightValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  colour: gender == Gender.Male ? kActiveCardColour : kInActiveCardColour,
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
                  colour: gender == Gender.Female ? kActiveCardColour : kInActiveCardColour,
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
              colour: kInActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: kLabelTextStyle,  
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(heightValue.toString(),
                        style: kNumberTextStyle
                      ),
                      Text('cm',
                        style: kLabelTextStyle
                      ),
                    ],
                  ),
                  Slider(
                    value: heightValue,
                    onChanged: (value) {
                      setState(() {
                        heightValue = value.round().toDouble();
                      });
                    },
                    min: kMinHeight,
                    max: kMaxHeight,
                  )
                ],
              ),
            )
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: kInActiveCardColour,
                cardChild: Container(),
              )),
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: kInActiveCardColour,
                cardChild: Container(),
              ))
            ],
          )),
        ],
        
      ),
    );
  }
}

