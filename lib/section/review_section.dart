import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';
import 'package:neuchatel_birds/models/review.dart';
import 'package:neuchatel_birds/widgets/review_card.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';

class ReviewSection extends StatefulWidget {
  @override
  createState() => ReviewState();
}

class ReviewState extends State<ReviewSection> {
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    double ratio = MakeItResponsive().getRatio(context);
    Size cardSize = size * ratio;
    List<Review> reviews = [archi, moustache, fleur, leche, gourmand, dog];
    List<ReviewCard> cards =
        reviews.map((e) => ReviewCard(review: e, cardSize: cardSize)).toList();

    return Container(
      padding: EdgeInsets.all(30.0),
      width: size.width,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TitleText(string: "Ils ont aimé:"),
          ),
          const SizedBox(height: 7.5),
          MakeItResponsive().responsiveRows(cards, screenSize)
        ],
      ),
    );
  }
}
