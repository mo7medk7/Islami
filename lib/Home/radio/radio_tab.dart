import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Image.asset("assets/images/radio_image.png"),
          SizedBox(
            height: 40,
          ),
          Text(
            "إذاعة القرآن الكريم",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset("assets/images/next.png"))),
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset("assets/images/reasume.png"))),
              Expanded(
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset("assets/images/previous.png"))),
            ],
          )
        ],
      ),
    );
  }
}
