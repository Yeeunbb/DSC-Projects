import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card2.dart';
import 'package:bmi_calculator/constants.dart';
import 'components/reusable_card.dart';
import 'constants.dart';


class InformationPage extends StatelessWidget {
  InformationPage({@required this.resultText});

  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'BMI-LEVEL',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCardT(
              colour: resultText == '3단계 비만'
                  ? kBottomContainerColour
                  : kActiveCardColour,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '35~  :',
                    style: kLabelTextStyleW,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '3단계 비만',
                    style: kLabelTextStyleW,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCardT(
              colour: resultText == '2단계 비만'
                  ? kBottomContainerColour
                  : kActiveCardColour,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '30~34:',
                    style: kLabelTextStyleW,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '2단계 비만',
                    style: kLabelTextStyleW,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCardT(
              colour: resultText == '1단계 비만'
                  ? kBottomContainerColour
                  : kActiveCardColour,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '25~29:',
                    style: kLabelTextStyleW,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '1단계 비만',
                    style: kLabelTextStyleW,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCardT(
              colour: resultText == '비만 전단계'
                  ? kBottomContainerColour
                  : kActiveCardColour,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '23~24:',
                    style: kLabelTextStyleW,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '비만 전단계',
                    style: kLabelTextStyleW,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCardT(
              colour: resultText == '정상'
                  ? kBottomContainerColour
                  : kActiveCardColour,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '18.5~22:',
                    style: kLabelTextStyleW,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '정상',
                    style: kLabelTextStyleW,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCardT(
              colour: resultText == '저체중'
                  ? kBottomContainerColour
                  : kActiveCardColour,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '~18.5:',
                    style: kLabelTextStyleW,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '저체중',
                    style: kLabelTextStyleW,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
