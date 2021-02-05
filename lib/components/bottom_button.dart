import 'package:flutter/material.dart';
import 'package:bmi_calculator_app/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText, @required this.onPress});

  final String buttonText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kBmiCalculateTextStyle,
          ),
        ),
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}