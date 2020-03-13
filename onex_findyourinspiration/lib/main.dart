import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inspiration UI',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          color: Colors.black87,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Find Your',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Inspiration',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 243, 243, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search you're looking for",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Promo today',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          promoCard('assets/images/one.jpg'),
                          promoCard('assets/images/two.jpg'),
                          promoCard('assets/images/three.jpg'),
                          promoCard('assets/images/four.jpg'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/three.jpg'),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: [0.3, 0.9],
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.2),
                            ],
                          ),
                        ),
                        child: Align(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Best Design',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 28),
                            ),
                          ),
                          alignment: Alignment.bottomLeft,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard(image) {
    return AspectRatio(
      aspectRatio: 2.6 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: [0.1, 0.9],
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),
                ],
              )),
        ),
      ),
    );
  }
}
