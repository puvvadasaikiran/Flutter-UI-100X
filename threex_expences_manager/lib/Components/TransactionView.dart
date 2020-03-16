import 'package:flutter/material.dart';
import '../Models/Transaction_model.dart';

class TransactionView extends StatelessWidget {
  final Transactionmodel model;

  const TransactionView(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              model.type == '-'
                  ? Icon(
                      Icons.arrow_downward,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.arrow_upward,
                      color: Colors.green,
                    ),
              SizedBox(
                width: 10,
              ),
              Text(
                model.name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                "${model.type}${model.price}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              Text(
                model.currency,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
