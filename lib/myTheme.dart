import 'package:flutter/material.dart';

class myTheme {
  static Color blackColor = Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color primaryDark = Color(0xff141A2E);
  static Color yelloColor = Color(0xffFACC1D);

  static Color whiteLight = Colors.white;

  static ThemeData LightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryLight,
      canvasColor: primaryLight,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black)),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: blackColor,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
        titleSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: blackColor,
          unselectedItemColor: whiteLight));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primaryDark,
      canvasColor: primaryDark,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: whiteLight)),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: whiteLight,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: yelloColor,
        ),
        titleSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: yelloColor,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: yelloColor,
          unselectedItemColor: whiteLight));
}
