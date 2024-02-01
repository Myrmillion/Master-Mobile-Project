import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/models/make_it_responsive.dart';
import 'package:la_cuisine_dathena/widgets/phone_bar.dart';
import 'package:la_cuisine_dathena/widgets/web_bar.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    return Scaffold(
      appBar:
          (screenSize == ScreenSize.small) ? PhoneBar() : WebBar(size: size),
      body: Center(
        child: Text("Nous sommes passés à la page suivante"),
      ),
    );
  }
}
