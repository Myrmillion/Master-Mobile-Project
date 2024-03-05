import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';
import 'package:neuchatel_birds/widgets/phone_bar.dart';
import 'package:neuchatel_birds/widgets/web_bar.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive.getSize(context);
    return Scaffold(
      appBar:
          (screenSize == ScreenSize.phone) ? PhoneBar() : WebBar(size: size),
      body: Center(
        child: Text("Nous sommes passés à la page suivante"),
      ),
    );
  }
}
