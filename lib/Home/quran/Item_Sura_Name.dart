import 'package:flutter/material.dart';
import 'package:islami_app/Home/quran/Sura_Details.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;

  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetails.routeName,
            arguments: SuraDetailsArgs(index: index, name: name));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
