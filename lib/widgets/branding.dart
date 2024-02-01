import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/widgets/title_text.dart';

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
