import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';
import 'package:neuchatel_birds/widgets/help_card.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';

class HelpSection extends StatefulWidget {
  @override
  createState() => HelpState();
}

class HelpState extends State<HelpSection> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final ratio = MakeItResponsive.computeRatio(context);
    final cards = helps.map((h) => HelpCard(h, width: width * ratio)).toList();

    return Container(
      padding: EdgeInsets.all(30.0),
      width: width,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TitleText("Ils nous aident :"),
          ),
          const SizedBox(height: 7.5),
          MakeItResponsive.buildRows(context, cards)
        ],
      ),
    );
  }
}
