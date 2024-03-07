import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/models/btn_info.dart';
import 'package:neuchatel_birds/pages/next_page.dart';
import 'package:neuchatel_birds/widgets/branding.dart';
import 'package:neuchatel_birds/widgets/custom_button.dart';

/// The app bar for web screens.
/// Does not extend [AppBar] because the drawer button is not desired.
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
                ...menuInfo.map((def) => CustomButton(def)).toList(),
                CustomButton(BtnInfo(text: "Log in", destination: NextPage()))
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
