import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';

class Branding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TitleText("Oiseaux de Neuchâtel"),
        const SizedBox(width: 10.0),
        Image.asset(logo, height: 50, width: 50)
      ],
    );
  }
}
