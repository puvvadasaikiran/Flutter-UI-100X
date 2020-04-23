import 'package:flutter/material.dart';
import 'package:seventeenx_navigation_ui/themes.dart';

import 'collapsing_list_tile.dart';
import 'navigation_model.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  _CollapsingNavigationDrawerState createState() =>
      _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double maxWidth = 250;
  double minWidth = 60;
  bool isCollapsed = true;
  AnimationController _animationController;
  Animation<double> widthAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 260));
    widthAnimation = Tween<double>(
      begin: maxWidth,
      end: minWidth,
    ).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, widget) => getWidget(context, widget),
    );
  }

  Widget getWidget(context, widget) {
    return Container(
      width: widthAnimation.value,
      color: drawerBackGroundColor,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          CollapsingListTile(
              title: "Sarah Pulson",
              icon: Icons.person,
              animationController: _animationController),
          Expanded(
            child: ListView.builder(
                itemCount: navigationItems.length,
                itemBuilder: (context, index) {
                  return CollapsingListTile(
                      title: navigationItems[index].title,
                      icon: navigationItems[index].icon,
                      animationController: _animationController);
                }),
          ),
          InkWell(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
                isCollapsed
                    ? _animationController.reverse()
                    : _animationController.forward();
              });
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.close_menu,
              progress: _animationController,
              color: Colors.white70,
              size: 35,
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
