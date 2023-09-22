import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int tsbeh = 0;
  int totalTsbeh = 0;
  String text = 'سبحان الله';
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: Image.asset("assets/images/head_of_seb7a.png"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(2),
                      child: AnimatedRotation(
                          turns: turns,
                          duration: Duration(seconds: 1),
                          child:
                              Image.asset("assets/images/body_of_seb7a.png"))),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "عدد التسبيحات",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: provider.appTheme == ThemeMode.dark
                            ? Color(0xff141A2E)
                            : Color(0xffB7935F)),
                    onPressed: () {},
                    child: Text(
                      "$tsbeh",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      tsbehClick();
                      setState(() => turns += 1 / 33);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.all(20),
                      alignment: AlignmentDirectional.center,
                      width: 500,
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "$text",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void tsbehClick() {
    if (totalTsbeh < 33) {
      tsbeh++;
      totalTsbeh++;
      //print("tsbeh1 $tsbeh");
    } else if (tsbeh == 33) {
      tsbeh = 0;
    } else if (totalTsbeh >= 33 && totalTsbeh <= 66) {
      tsbeh++;
      totalTsbeh++;
      text = 'الحمد لله';
    } else if (tsbeh == 66) {
      tsbeh = 0;
      print(totalTsbeh);
    } else if (totalTsbeh >= 66 && totalTsbeh <= 99) {
      tsbeh++;
      totalTsbeh++;
      text = 'الله اكبر';
    } else if (totalTsbeh == 100) {
      tsbeh = 0;
      totalTsbeh = 0;
      text = 'سبحان الله';
    }
    setState(() {});
  }
}
