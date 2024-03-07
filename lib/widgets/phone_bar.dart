import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/widgets/branding.dart';

/// The app bar for phone screens.
/// Does extend [AppBar] in order to display the drawer button.
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
              color: themeColor.withOpacity(opacity),
              width: 3.0,
            ),
          ),
        );
}
