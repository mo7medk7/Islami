import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ThemeButtomSheet extends StatefulWidget {
  @override
  State<ThemeButtomSheet> createState() => _ThemeButtomSheetState();
}

class _ThemeButtomSheetState extends State<ThemeButtomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {
            provider.changeTheme(ThemeMode.dark);
          },
          child: provider.appTheme == ThemeMode.dark
              ? Selected(AppLocalizations.of(context)!.dark)
              : UnSelected(AppLocalizations.of(context)!.dark),
        ),
        InkWell(
          onTap: () {
            provider.changeTheme(ThemeMode.light);
          },
          child: provider.appTheme == ThemeMode.light
              ? Selected(AppLocalizations.of(context)!.light)
              : UnSelected(AppLocalizations.of(context)!.light),
        ),
      ],
    );
  }

  Widget Selected(String text) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Icon(Icons.check)
        ],
      ),
    );
  }

  Widget UnSelected(String text) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Text(text, style: Theme.of(context).textTheme.titleSmall));
  }
}
