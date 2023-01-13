import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    Key key,
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  }) : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as ResultsArguments;
  
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text('Your Results',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.resultText.isNotEmpty ? args.resultText : resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    args.bmiResult.isNotEmpty ? args.bmiResult : bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    args.interpretation.isNotEmpty ? args.interpretation : interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ),
          BottomButton(
            title: 'Recalculate',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}

class ResultsArguments {
  ResultsArguments({
    this.bmiResult,
    this.resultText,
    this.interpretation
  });
  final String bmiResult;
  final String resultText;
  final String interpretation;
}
