import 'package:flutter/foundation.dart';

class UserController extends ChangeNotifier {
  String userName = '';

  void saveUserName(String name) {
    userName = name;
    notifyListeners();
  }
}
