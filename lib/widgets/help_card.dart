import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/review.dart';

class HelpCard extends StatefulWidget {
  HelpCard(this.help, {required this.width});

  final Help help;
  final double width;

  @override
  createState() => RCState();
}

class RCState extends State<HelpCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: Container(
        constraints: BoxConstraints(minHeight: 325.0),
        width: (isHover) ? widget.width + 10 : widget.width,
        child: Card(
          elevation: (isHover) ? 3.0 : 1.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  widget.help.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5.0),
                ClipRRect(
                  child: Image.asset(
                    widget.help.image,
                    fit: BoxFit.cover,
                    width: widget.width - 20,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                const SizedBox(height: 10.0),
                Text(widget.help.comment, textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
