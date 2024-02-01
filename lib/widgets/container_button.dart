import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/models/make_it_responsive.dart';

class ContainerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width / 7),
        child: (screenSize == ScreenSize.small) ? small() : big(),
      ),
    );
  }

  Widget small() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: getFloating(),
    );
  }

  Widget big() {
    return Container(
      height: 40,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: getCardHoverButton(),
        ),
      ),
    );
  }
}
