import 'package:flutter/material.dart';

class myTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color whiteLight = Colors.white;

  static ThemeData LightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryLight,
      canvasColor: primaryLight,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: blackColor,
      )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: blackColor,
          unselectedItemColor: whiteLight));
}
