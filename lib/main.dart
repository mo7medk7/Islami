import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/Home/HomeScreen.dart';
import 'package:islami_app/Home/quran/Sura_Details.dart';
import 'package:islami_app/myTheme.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: myApp()));
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: myTheme.LightTheme,
      darkTheme: myTheme.darkTheme,
      locale: Locale(provider.appLanguage),
      themeMode: provider.appTheme,
    );
  }
}
