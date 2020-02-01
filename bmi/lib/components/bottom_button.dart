import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: kBottomContainerColour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: kBottomContainerHeight,
      ),
    );
  }
}
