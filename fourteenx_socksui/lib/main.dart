import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fourteenx_socksui/ViewSocks.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 25, right: 25, top: 60),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(255, 250, 182, 1),
                    Color.fromRGBO(255, 239, 78, 1)
                  ],
                ),
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/menu.png',
                    width: 20,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Best Online \nSocks Collection',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        flex: 4,
                      ),
                      Expanded(
                        child: Image.asset('assets/header-socks.png'),
                        flex: 3,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Transform.translate(
              offset: Offset(0, -35),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 8),
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Choose \na category',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(97, 90, 90, 1),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              padding: EdgeInsets.all(10),
                              color: Colors.yellow,
                              child: Text('Adult'),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              padding: EdgeInsets.all(10),
                              color: Colors.grey.withOpacity(0.3),
                              child: Text('Children'),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.only(bottom: 20, left: 20),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  makeCard(
                      context: context,
                      startColor: Color.fromRGBO(251, 121, 155, 1),
                      endColor: Color.fromRGBO(251, 53, 105, 1),
                      image: 'assets/socks-one.png'),
                       makeCard(
                      context: context,
                      startColor: Color.fromRGBO(203, 251, 255, 1),
                      endColor: Color.fromRGBO(81, 223, 234, 1),
                      image: 'assets/socks-two.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCard(
      {BuildContext context, Color startColor, Color endColor, String image}) {
    return GestureDetector(
      onTap: () {

        Navigator.push(context, PageTransition(child: ViewSocks(), type: PageTransitionType.fade));
      },
      child: AspectRatio(
        aspectRatio: 4 / 5,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
              startColor,endColor
            ]),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey[350],
              offset: Offset(5, 10)
            )
          ]
          
          ),
          child: Padding(padding:  EdgeInsets.all(50),
          child: Center(
            child: Image.asset(image),
          ),),
        ),
      ),
    );
  }
}
