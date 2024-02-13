import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/models/review.dart';

class ReviewCard extends StatefulWidget {
  final Size cardSize;
  final Review review;

  ReviewCard({required this.review, required this.cardSize});

  @override
  createState() => RCState();
}

class RCState extends State<ReviewCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print("Tapped");
      },
      onHover: (value) {
        setState(() => isHover = value);
      },
      child: Container(
        height: widget.cardSize.height,
        width: (isHover) ? widget.cardSize.width + 30 : widget.cardSize.width,
        child: Card(
          elevation: (isHover) ? 7 : 0,
          color: pinkColor,
          child: Column(
            children: [
              Text(widget.review.name),
              Expanded(
                child: ClipRRect(
                  child: Image.asset(
                    widget.review.image,
                    fit: BoxFit.cover,
                    width: widget.cardSize.width - 20,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Expanded(child: Text(widget.review.comment))
            ],
          ),
        ),
      ),
    );
  }
}
