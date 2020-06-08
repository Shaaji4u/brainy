import 'package:flutter/material.dart';


 final primaryColor = Color(0xFF030837);
 final primarySwatchColor = Color(0xFF040c4f);
 final secondaryColor = Colors.white;
 final secondarySwatchColor = Colors.white70;
  final themeLight =  ThemeData(
    fontFamily: "Loto",
    primaryColor: primaryColor,
    textTheme: TextTheme(
      display1: TextStyle(fontSize: 40, color: Colors.white, fontFamily: "Loto", fontWeight: FontWeight.bold),
      display2: TextStyle(fontSize: 30, color: Colors.white, fontFamily: "Loto"),
      display3: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "Loto"),
      display4: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Loto"),
      body1: TextStyle(fontSize: 18, color: Colors.white, fontFamily: "Loto"),
      body2: TextStyle(fontSize: 14, color: Colors.white, fontFamily: "Loto"),
    )
    
  );