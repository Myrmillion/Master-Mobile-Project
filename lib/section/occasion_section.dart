import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/models/make_it_responsive.dart';
import 'package:la_cuisine_dathena/models/occasion.dart';
import 'package:la_cuisine_dathena/widgets/occasion_widget.dart';
import 'package:la_cuisine_dathena/widgets/title_text.dart';

class OccasionSection extends StatelessWidget {
  final List<Occasion> occasions = [
    Occasion(name: "Mariage", path: weddingImage),
    Occasion(name: "Anniversaire", path: birthdayImage),
    Occasion(name: "Autre..", path: cupcakeImage)
  ];

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    bool isSmall = (screenSize == ScreenSize.small);
    Size cardSize = isSmall ? size / 2 : size / 4;
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TitleText(string: "Occasions:"),
          ),
          const SizedBox(height: 7.5),
          Text(
            "Il y a toujours une très bonne occasion pour déguster un gateau...",
            textAlign: TextAlign.end,
          ),
          const SizedBox(height: 15.0),
          adaptedToSize(isSmall, cardSize)
        ],
      ),
    );
  }

  Widget adaptedToSize(bool small, Size size) {
    List<Widget> widgets = occasions.map((o) {
      return OccasionWidget(size: size, occasion: o);
    }).toList();
    return (small)
        ? Column(children: widgets)
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: widgets,
          );
  }
}
