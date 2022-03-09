
import 'package:flutter/cupertino.dart';

import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  User? _user;

  bool get existUser => _user != null;

  void setUser(User user){
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

  User? getUser() => _user; //-Se podria pasar la copia si no se quiere que se modifique
}