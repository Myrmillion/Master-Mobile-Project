import 'package:flutter/material.dart';
import 'package:neuchatel_birds/widgets/branding.dart';

class PhoneBar extends AppBar {
  final double opacity;

  PhoneBar({this.opacity = 0.5})
      : super(
          title: Branding(),
          centerTitle: true,
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0.0,
          shape: Border(
            bottom: BorderSide(
              color: Colors.red.withOpacity(opacity),
              width: 3.0,
            ),
          ),
        );
}
