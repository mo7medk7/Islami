import 'package:flutter/material.dart';

class ItemHadethName extends StatelessWidget {
  String title;

  ItemHadethName({required this.title});

  @override
  Widget build(BuildContext context) {
    // return InkWell(
    // onTap: () {
    // Navigator.of(context).pushNamed(SuraDetails.routeName,
    //  arguments: SuraDetailsArgs(index: index, name: name));
    //},
    //child:
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium,
      textAlign: TextAlign.center,
    );
  }
}
