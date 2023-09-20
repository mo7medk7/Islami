import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class LanguageButtomSheet extends StatefulWidget {
  @override
  State<LanguageButtomSheet> createState() => _LanguageButtomSheetState();
}

class _LanguageButtomSheetState extends State<LanguageButtomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {
            provider.changeLanguage('en');
          },
          child: provider.appLanguage == 'en'
              ? Selected(AppLocalizations.of(context)!.english)
              : UnSelected(AppLocalizations.of(context)!.english),
        ),
        InkWell(
          onTap: () {
            provider.changeLanguage('ar');
          },
          child: provider.appLanguage == 'ar'
              ? Selected(AppLocalizations.of(context)!.arabic)
              : UnSelected(AppLocalizations.of(context)!.arabic),
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
