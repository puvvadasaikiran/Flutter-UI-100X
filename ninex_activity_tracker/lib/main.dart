import 'package:flutter/material.dart';
import 'package:ninex_activity_tracker/dashboard.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  PageController _pageController;
  AnimationController rippleController;
  AnimationController scaleController;

  Animation<double> rippleAnimation;
  Animation<double> scaleAnimation;

  initState() {
    _pageController = PageController(
      initialPage: 0,
    );

    rippleController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    scaleController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..addStatusListener(
        (status) => {
          if (status == AnimationStatus.completed)
            {
              Navigator.of(context).push(PageTransition(
                  type: PageTransitionType.fade, child: DashBoard()))
            }
        },
      );

    rippleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(rippleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              rippleController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              rippleController.forward();
            }
          });

    scaleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(scaleController);

    rippleController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage('assets/images/2.png'),
          makePage('assets/images/3.png'),
          makePage('assets/images/4.png'),
        ],
      ),
    );
  }

  Widget makePage(String backGround) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backGround),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.3),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Text(
                'Exercise 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: <Widget>[
                  Text(
                    '15',
                    style: TextStyle(
                      color: Colors.yellow[700],
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Minutes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: <Widget>[
                  Text(
                    '3',
                    style: TextStyle(
                      color: Colors.yellow[700],
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Exercises',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Start the morning with your Health',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedBuilder(
                  animation: rippleAnimation,
                  builder: (context, child) => Transform.scale(
                    scale: scaleAnimation.value,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
