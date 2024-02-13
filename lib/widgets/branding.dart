import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';

class Branding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TitleText(string: "La cuisine d'Athena"),
        const SizedBox(width: 5.0),
        Image.asset(cupcakeLogo, height: 40, width: 40)
      ],
    );
  }
}
