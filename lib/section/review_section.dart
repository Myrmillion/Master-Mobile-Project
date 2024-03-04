import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';
import 'package:neuchatel_birds/models/review.dart';
import 'package:neuchatel_birds/widgets/review_card.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';

class HelpSection extends StatefulWidget {
  @override
  createState() => HelpState();
}

class HelpState extends State<HelpSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double ratio = MakeItResponsive.getRatio(context);
    Size cardSize = size * ratio;
    List<Help> reviews = [help1, help2, help3, help4, help5, help6];
    List<HelpCard> cards =
        reviews.map((e) => HelpCard(review: e, cardSize: cardSize)).toList();

    return Container(
      padding: EdgeInsets.all(30.0),
      width: size.width,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TitleText(string: "Ils nous aident :"),
          ),
          const SizedBox(height: 7.5),
          MakeItResponsive.responsiveRows(context, cards)
        ],
      ),
    );
  }
}
