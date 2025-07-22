import 'package:flutter/material.dart';

class AppThemeData{
  ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.orange,
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.normal,
        buttonColor: Colors.orange,
        disabledColor: Colors.grey,
      ),
      textTheme: TextTheme(
        bodySmall: TextStyle(color: Colors.black, fontSize: 12),
        bodyMedium: TextStyle(color: Colors.black, fontSize: 14),
        bodyLarge: TextStyle(color: Colors.black, fontSize: 18),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(color: Colors.white),
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }


  ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.orange,
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.normal,
        buttonColor: Colors.orange,
        disabledColor: Colors.grey,
      ),
      textTheme: TextTheme(
        bodySmall: TextStyle(color: Colors.white, fontSize: 12),
        bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
        bodyLarge: TextStyle(color: Colors.white, fontSize: 18),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.orange,
        titleTextStyle: TextStyle(color: Colors.white),
        foregroundColor: Colors.orange,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}