import 'package:flutter/material.dart';
import 'package:islami_app/Home/HomeScreen.dart';
import 'package:islami_app/Home/quran/Sura_Details.dart';
import 'package:islami_app/myTheme.dart';

void main (){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
      },
      theme: myTheme.LightTheme,
    );
  }
}
