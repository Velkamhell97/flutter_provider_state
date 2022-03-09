
import 'package:flutter/cupertino.dart';

import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  User? _user;
  User? get user => _user;
  set user(User? user) {
    _user = user;
    notifyListeners();
  }

  void setAge(DateTime birthday){
    if(_user != null){
      _user!.birthday = birthday;
      notifyListeners();
    }
  }

  void addProffesion(String profession){
    if(_user != null){
      _user!.professions.add(profession);
      notifyListeners();
    }
  }
}