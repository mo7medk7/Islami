import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/Home/hadeth/item_hadeth_name.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      addHadeth();
    }

    return Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        ahadethList.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ))
            : Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: 1,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemHadethName(title: ahadethList[index].title);
                  },
                  itemCount: ahadethList.length,
                ),
              ),
      ],
    );
  }

  void addHadeth() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethList = content.split("#");
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLines = hadethList[i].split("/n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, contentHadeth: hadethLines);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> contentHadeth;

  Hadeth({required this.title, required this.contentHadeth});
}
