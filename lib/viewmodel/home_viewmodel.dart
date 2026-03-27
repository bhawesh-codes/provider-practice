import 'package:flutter/material.dart';

class HomeViewmodel extends ChangeNotifier{
  Color _color = Colors.redAccent;
  Color get color => _color;
  int _count = 0;
  String get count => _count.toString();

  void changeColor(){
    _color == Colors.redAccent ? _color= Colors.blueAccent : _color = Colors.redAccent;
    notifyListeners();
  }
  void changeCount(){
    _count++;
    notifyListeners();
  }
}