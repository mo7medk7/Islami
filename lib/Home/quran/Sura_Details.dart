import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Home/quran/item_sura_details.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = " sura_details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      addSura(args.index);
    }

    return Stack(children: [
      Image.asset(
        "assets/images/background.png",
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
          appBar: AppBar(
            title: Text(
              "${args.name}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: verses.length == 0
              ? Center(child: CircularProgressIndicator())
              : Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.07),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: ListView.builder(
                    itemBuilder: ((context, index) {
                      return ItemSuraDetails(
                          content: verses[index], index: index);
                    }),
                    itemCount: verses.length,
                  ),
                ))
    ]);
  }

  void addSura(int index) async {
    String content =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = content.split("/n");
    verses = lines;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.index, required this.name});
}
