import 'package:flutter/material.dart';
import 'package:sixx_github_folowers/Models/User.dart';

class UserProvider with ChangeNotifier{

  User user;
  String errorMessage;
  bool loading = false;

  Future<bool> fetchUser(username) async{
    setLoading(value: true);
      }
    
      void setLoading({bool value}) {
        loading = value;
        notifyListeners();
      }


}