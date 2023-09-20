import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/Home/settings/language_button_sheet.dart';
import 'package:islami_app/Home/settings/theme_button_sheet.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              LanguageButton();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        provider.appLanguage == "en"
                            ? AppLocalizations.of(context)!.english
                            : AppLocalizations.of(context)!.arabic,
                        style: Theme.of(context).textTheme.titleSmall),
                    Icon(Icons.arrow_drop_down)
                  ]),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              ThemeButton();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        provider.appTheme == ThemeMode.light
                            ? AppLocalizations.of(context)!.light
                            : AppLocalizations.of(context)!.light,
                        style: Theme.of(context).textTheme.titleSmall),
                    Icon(Icons.arrow_drop_down)
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  void LanguageButton() {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageButtomSheet());
  }

  void ThemeButton() {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeButtomSheet());
  }
}
