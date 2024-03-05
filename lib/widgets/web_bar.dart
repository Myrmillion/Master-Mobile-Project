import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/models/btn_definition.dart';
import 'package:neuchatel_birds/pages/next_page.dart';
import 'package:neuchatel_birds/widgets/branding.dart';
import 'package:neuchatel_birds/widgets/hover_button.dart';

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
                ...menuDefinitions.map((def) => HoverButton(def)).toList(),
                HoverButton(
                  BtnDefinition(text: "Log in", destination: NextPage()),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: themeColor.withOpacity(opacity),
                  width: 3.0,
                ),
              ),
            ),
          ),
        );
}
