import 'package:flutter/material.dart';
import 'package:twentyonex_book/constants.dart';

class TwoSideRoundBtton extends StatelessWidget {
  final String buttonName;
  final double radius;
  final Function press;
  const TwoSideRoundBtton({
    Key key,
    this.buttonName,
    this.radius = 29,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
