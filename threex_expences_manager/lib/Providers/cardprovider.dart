import 'dart:collection';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:threex_expences_manager/Models/card_model.dart';

class CardProvider with ChangeNotifier {
  List<CardModel> cards = [];

  void initialState() {
    syncDataWithProvider();
  }

  UnmodifiableListView<CardModel> get allCards => UnmodifiableListView(cards);

  void addCard(CardModel _card) {
    cards.add(_card);

    updateSharedPreferences();
    notifyListeners();
  }

  void updateSharedPreferences() async {
    List<String> myCards = cards.map((f) => json.encode(f.toJson())).toList();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('cards', myCards);
  }

  void removeCard(CardModel _card) {
    cards.removeWhere((card) => card.number == _card.number);

    updateSharedPreferences();
    notifyListeners();
  }

  int getCardLenth() {
    return cards.length;
  }

  Future syncDataWithProvider() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var result = prefs.getStringList('cards');

    if (result != null) {
      cards = result.map((f) => CardModel.fromJson(json.decode(f))).toList();
    }

    notifyListeners();
  }
}
