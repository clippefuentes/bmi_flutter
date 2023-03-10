
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'card_gender_content.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'results_page.dart';



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
  int heightValue = 0;
  int weightValue = 0;
  int age = 0;

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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0
                      ),
                      thumbColor: Colors.white
                    ),
                    child: Slider(
                      value: heightValue.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          heightValue = value.round();
                        });
                      },
                      min: kMinHeight,
                      max: kMaxHeight,
                    )
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
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Weight',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      weightValue.toString(),
                      style: kNumberTextStyle
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPress: () {
                            setState(() {
                              if (weightValue > 0) {
                                weightValue -= 1;
                              }
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPress: () {
                            setState(() {
                              weightValue += 1;
                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(child: ReusableCard(
                width: 170.0,
                colour: kInActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Age',
                      style: kLabelTextStyle,
                    ),
                    Text(
                      age.toString(),
                      style: kNumberTextStyle
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPress: () {
                            setState(() {
                              if (age > 0) {
                                age -= 1;
                              }
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPress: () {
                            setState(() {
                              age += 1;
                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ))
            ],
          )),
          BottomButton(
            // route: '/results',
            onPressed: () {
              CalculatorBrain calc = CalculatorBrain(
                height: heightValue,
                weight: weightValue,
              );

              String currentBMI = calc.calculateBMI();
              String currentResult = calc.getResult();
              String currentInterpretation = calc.getInterpretation();
              print("$currentBMI \n $currentResult \n $currentInterpretation");
              Navigator.pushNamed(
                context,
                '/results',
                arguments: ResultsArguments(
                  bmiResult: currentBMI,
                  interpretation: currentInterpretation,
                  resultText: currentResult,
                )
              );
            },
            title: 'Calculate'
          )
        ],
      ),
    );
  }
}

