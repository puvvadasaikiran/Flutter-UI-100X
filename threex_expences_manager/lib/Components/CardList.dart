import 'package:flutter/material.dart';
import 'package:threex_expences_manager/Components/CardView.dart';
import 'package:threex_expences_manager/Models/card_model.dart';
import '../Pages/CardViewPage.dart';

class CardList extends StatelessWidget {
  final List<CardModel> cards;

  const CardList(this.cards);
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: getChildrenCards(context),
    );
  }

  List<Widget> getChildrenCards(context) {
    return cards
        .map((card) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                     MaterialPageRoute(
                        builder: (context) => CardViewPage(card)));
              },
              child: CardView(model: card),
            ))
        .toList();
  }
}
