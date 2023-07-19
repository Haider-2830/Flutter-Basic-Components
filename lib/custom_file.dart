// This contain the custom style that use again ad again in file and project .
// So make the another file that contain all the repeated widget as well as the style
import 'package:flutter/material.dart';

TextStyle customTextStyle({Color textColor = Colors.grey}) {
  return  TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 50,
      color: textColor,
      letterSpacing: 3,
      fontFamily: 'CustomFont');
}
