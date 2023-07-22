// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  Map<String, String>? currentUser = {};
  String _userName = '';
  String get name => _userName;

  final _userList = {
    'dojjo': {
      'fullname': 'Martinson Joshua Tetteh',
      'email': 'hosuatetteh@gmail.com',
      'password': '!1234578',
    },
    'corp': {
      'fullname': 'Joshua Tetteh',
      'email': 'martison@trestleacademyghana.org',
      'password': '#1234568',
    }
  };

  void setCurrentUser(String username, String pass) {
    if (_userList.containsKey(username)){
      
      _userList[username]?['password'] == pass ? currentUser = _userList[username]: print('invalid password');
      _userName = username;
      print(currentUser);
      print(_userName);
    } else {
      print('Not a user!');
    }
  }

}
