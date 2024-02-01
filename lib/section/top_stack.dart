import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/widgets/container_button.dart';
import 'package:la_cuisine_dathena/widgets/container_text_and_image.dart';

class TopStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [ContainerTextAndImage(), ContainerButton()],
    );
  }
}
