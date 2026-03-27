import 'package:flutter/material.dart';

class HomeViewmodel extends ChangeNotifier{
  Color _color = Colors.red;
  Color get color => _color;
  int _count = 0;
  String get count => _count.toString();

  void changeColor(){
    _color == Colors.red ? _color= Colors.blueAccent : _color = Colors.red;
    notifyListeners();
  }
  void changeCount(){
    _count++;
    notifyListeners();
  }
}