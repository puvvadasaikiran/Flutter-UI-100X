import 'package:flutter/material.dart';

class ViewSocks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            height: mediaQuery.size.height / 3,
            child: Container(
              // color: Colors.green,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(251, 121, 155, 1),
                    Color.fromRGBO(251, 53, 105, 1),
                  ],
                ),
              ),
              child: Transform.translate(
                offset: Offset(30, -30),
                child: Image.asset('assets/details-page-header.png'),
              ),
            ),
            top: 0,
            left: 0,
            right: 0,
          ),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pop(context)),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: mediaQuery.size.height / 1.4,
            child: Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Ranger Sport',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ankle Men\'s Athletic Socks',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'RVoluptatem enim consequatur Ut voluptate fugiat odit ecto aut unde et corporis quisquam magni. Minima velit laudantium omnis est rerum nesciunt quo rerum laboriosam.vitae. Voluptatem voluptas voluptatem explicabo fuga optio autem ut tempora nulla. Voluptatem consequatur aut facilis aut odit sit non reprehenderit assumenda.anger Sport',
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.6,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.all(2.5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(width: 3, color: Colors.red),
                              shape: BoxShape.circle,
                              color: Colors.white),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'More Options',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[600]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 3.2 / 1,
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 56,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.pinkAccent),
                                    child: Image.asset('assets/socks-icon.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Ankle Length Socks',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '23.00',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, 1),
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                      ,SizedBox(width: 10,) ,
                      
                       AspectRatio(
                            aspectRatio: 3.2 / 1,
                            child: Container(
                              padding: EdgeInsets.all(13),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 56,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.cyan),
                                    child: Image.asset('assets/socks-icon.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Ankle Length Socks',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, 1),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '23.00',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(97, 90, 90, 1),
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                       ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
