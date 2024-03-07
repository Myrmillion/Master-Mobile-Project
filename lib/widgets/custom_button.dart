import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/btn_info.dart';

class CustomButton extends StatefulWidget {
  CustomButton(this.definition);

  final BtnInfo definition;

  @override
  createState() => HoverState();
}

class HoverState extends State<CustomButton> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => widget.definition.destination),
        ),
        onHover: (value) => setState(() => hovered = value),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.definition.text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: (hovered) ? Colors.grey.shade800 : Colors.black,
              ),
            ),
            Visibility.maintain(
              visible: hovered,
              child: Container(
                height: 2,
                width: 50,
                color: Colors.grey.shade800,
              ),
            )
          ],
        ),
      ),
    );
  }
}
