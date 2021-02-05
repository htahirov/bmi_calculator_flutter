import 'package:bmi_calculator_app/constants.dart';
import 'package:bmi_calculator_app/components/bottom_button.dart';
import 'package:bmi_calculator_app/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.bmiResultText, @required this.bmiInterpretationText});

  final String bmiResult;
  final String bmiResultText;
  final String bmiInterpretationText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(
          color: kActiveCardColor,
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kResultText,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUsableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResultText,
                    style: kOverweightText,
                  ),
                  Text(
                    bmiResult,
                    style: kResultNumber,
                  ),
                  Text(
                    bmiInterpretationText,
                    style: kAnswerText,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATOR',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
