import 'package:flutter/material.dart';

class ButtonAnimation extends StatefulWidget {
  @override
  _ButtonAnimationState createState() => _ButtonAnimationState();
}

class _ButtonAnimationState extends State<ButtonAnimation>
    with TickerProviderStateMixin {
  @override
  AnimationController _animationcontroller;
  AnimationController _scaleAnimationcontroller;
  AnimationController _fadeAnimationcontroller;

  Animation<double> _animation;
  Animation<double> _scaleanimation;
  Animation<double> _fadeanimation;

  void initState() {
    _animationcontroller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        InkWell(
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(3),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Download',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
