import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';

class TitleText extends Text {
  final String string;
  final FontStyle? fontStyle;

  TitleText(this.string, {this.fontStyle})
      : super(
          string,
          style: TextStyle(
            color: titleColor,
            fontWeight: FontWeight.w900,
            fontSize: 22.0,
            fontStyle: fontStyle,
          ),
        );
}
