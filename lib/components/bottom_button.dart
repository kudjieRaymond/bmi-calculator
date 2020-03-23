import 'package:flutter/material.dart';
import 'package:bmicalculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTap});

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
          style: kLabelTextStyle,
        )),
        color: kBottomContainerColour,
        height: kBottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 5.0),
        padding: EdgeInsets.only(bottom: 5.0),
      ),
    );
  }
}
