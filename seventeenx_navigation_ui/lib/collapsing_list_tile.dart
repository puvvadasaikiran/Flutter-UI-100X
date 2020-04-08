import 'package:flutter/material.dart';
import 'package:seventeenx_navigation_ui/themes.dart';

class CollapsingListTile extends StatefulWidget {
  CollapsingListTile({this.title, this.icon, this.animationController});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();

  final String title;
  final IconData icon;
  final AnimationController animationController;
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  Animation<double> _widthAnimation;
  Animation<double> _BoxwidthAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _widthAnimation = Tween<double>(
      begin: 250,
      end: 60,
    ).animate(widget.animationController);
      _BoxwidthAnimation = Tween<double>(
      begin: 10,
      end: 0,
    ).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _widthAnimation.value,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        children: <Widget>[
          Icon(
            widget.icon,
            color: Colors.white30,
            size: 38,
          ),
          SizedBox(
            width: _BoxwidthAnimation.value,
          ),
          (_widthAnimation.value >= 220)
              ? Text(
                  widget.title,
                  style: listTitleDefaultTextStyle,
                )
              : Container()
        ],
      ),
    );
  }
}
