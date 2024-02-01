import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/models/button_object.dart';

class HoverButton extends StatefulWidget {
  final ButtonObject button;
  HoverButton({required this.button});

  @override
  createState() => HoverState();
}

class HoverState extends State<HoverButton> {
  bool hoverValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.button.text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: (hoverValue) ? Colors.grey : Colors.red,
              ),
            ),
            Container(
              height: 2,
              width: 50,
              color: (hoverValue) ? Colors.grey : Colors.transparent,
            )
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => widget.button.destination),
          );
        },
        onHover: (hover) => setState(() => hoverValue = hover),
      ),
    );
  }
}
