import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/review.dart';

class HelpCard extends StatefulWidget {
  final Size cardSize;
  final Help review;

  HelpCard({required this.review, required this.cardSize});

  @override
  createState() => RCState();
}

class RCState extends State<HelpCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print("Tapped");
      },
      onHover: (value) => setState(() => isHover = value),
      child: Container(
        constraints: BoxConstraints(minHeight: 325.0),
        width: (isHover) ? widget.cardSize.width + 10 : widget.cardSize.width,
        child: Card(
          elevation: (isHover) ? 2.0 : 1.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  widget.review.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5.0),
                ClipRRect(
                  child: Image.asset(
                    widget.review.image,
                    fit: BoxFit.cover,
                    width: widget.cardSize.width - 20,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                const SizedBox(height: 10.0),
                Text(widget.review.comment, textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
