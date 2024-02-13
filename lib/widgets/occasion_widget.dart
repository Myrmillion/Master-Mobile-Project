import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/occasion.dart';

class OccasionWidget extends StatefulWidget {
  final Size size;
  final Occasion occasion;

  OccasionWidget({required this.size, required this.occasion});

  @override
  createState() => OccasionState();
}

class OccasionState extends State<OccasionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.size.height,
          width: widget.size.width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              widget.occasion.path,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 10)),
        Text(
          widget.occasion.name,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
