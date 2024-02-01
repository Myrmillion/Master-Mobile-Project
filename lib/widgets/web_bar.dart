import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/models/button_object.dart';
import 'package:la_cuisine_dathena/pages/next_page.dart';
import 'package:la_cuisine_dathena/widgets/branding.dart';
import 'package:la_cuisine_dathena/widgets/hover_button.dart';

class WebBar extends PreferredSize {
  final Size size;
  final double opacity;

  WebBar({required this.size, this.opacity = 0.5})
      : super(
          preferredSize: Size((size.width), (size.height / 12)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Branding(),
                ...menuButtonHover(),
                HoverButton(
                  button: ButtonObject(text: "Log in", destination: NextPage()),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(opacity),
              border: Border(
                bottom: BorderSide(
                  color: Colors.red.withOpacity(opacity),
                  width: 2.0,
                ),
              ),
            ),
          ),
        );
}
