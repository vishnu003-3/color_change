import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  Color currentColor = Colors.pink;
  static List<Color> colors = [
    Colors.black,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.red,
  ];
  changeColor(Color newColor) {
    currentColor = newColor;
    notifyListeners();
  }
}
