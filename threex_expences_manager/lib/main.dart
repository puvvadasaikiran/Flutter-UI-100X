import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threex_expences_manager/Components/CardView.dart';
import 'package:threex_expences_manager/Components/TransactionView.dart';
import 'package:threex_expences_manager/Models/Transaction_model.dart';
import 'package:threex_expences_manager/Pages/AddCardPage.dart';
import 'package:threex_expences_manager/Providers/cardprovider.dart';

import 'Components/CardList.dart';
import 'Models/card_model.dart';

void main() => runApp(ChangeNotifierProvider<CardProvider>(
      builder: (context) => CardProvider(),
      child: MyApp(),
      create: null,
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Manager',
      theme: ThemeData(
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
      backgroundColor: Color.fromRGBO(238, 241, 242, 1),
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.black45,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => AddCardPage(),
              ));
            },
          ),
        ],
        brightness: Brightness.light,
        title: Text(
          'Home Page',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromRGBO(238, 241, 242, 1),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Provider.of<CardProvider>(context).getCardLenth() > 0
                  ? Consumer<CardProvider>(
                      builder: (context, cards, child) => Container(
                            height: 210,
                            child: CardList(cards.allCards),
                          ))

                  // CardView(
                  //     model: CardModel(
                  //         available: 1000,
                  //         number: '1234 1324 1244 2224',
                  //         bankName: 'kotak',
                  //         name: 'MasterCard',
                  //         currency: 'US',
                  //         id: 123),
                  //   )
                  : Container(
                      height: 210,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => AddCardPage(),
                            ));
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white24,
                            ),
                            child: Icon(Icons.add),
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Last Transactions',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TransactionView(
                Transactionmodel(1234, "Salary", 10000, '+', "US"),
              ),
              TransactionView(
                Transactionmodel(1234, "Shopping", 10000, '-', "US"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
