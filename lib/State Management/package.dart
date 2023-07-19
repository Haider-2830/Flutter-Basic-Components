import 'package:flutter/material.dart';

class ProviderApproach with ChangeNotifier {
  int count = 1;
  void setCountValue() {
    count++;
    notifyListeners(); // that are use to increase the value and work as set state method
  }
}

class Selection with ChangeNotifier {
  bool isTrue = false;
  void changeState() {
    if (isTrue) {
      isTrue = false;
    } else {
      isTrue = true;
    }
    notifyListeners();
  }
}

// this is the text field that contain the code of the styling
TextStyle customStyle() {
  return const TextStyle(
      color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);
}
