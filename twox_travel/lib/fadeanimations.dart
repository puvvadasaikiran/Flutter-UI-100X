import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations/controlled_animation.dart';
import 'package:simple_animations/simple_animations/multi_track_tween.dart';

class FadeAnimations extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimations({Key key, this.delay, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween(
      [
        Track('opacity').add(
          Duration(milliseconds: 500),
          Tween(begin: 0.0, end: 1.0),
        ),
        Track('translateY').add(
            Duration(milliseconds: 500), Tween(begin: 120.0, end: 0.0),
            curve: Curves.easeInOut),
      ],
    );

    return ControlledAnimation(
      delay: Duration(milliseconds: (500 + delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation['opacity'],
        child: Transform.translate(
          offset: Offset(0, animation['translateY']),
          child: child,
        ),
      ),
    );
  }
}
