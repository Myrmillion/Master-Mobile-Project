import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';
import 'package:neuchatel_birds/section/about_me_section.dart';
import 'package:neuchatel_birds/section/carousel_section.dart';
import 'package:neuchatel_birds/section/contact_section.dart';
import 'package:neuchatel_birds/section/service_section.dart';
import 'package:neuchatel_birds/section/quote_section.dart';
import 'package:neuchatel_birds/section/help_section.dart';
import 'package:neuchatel_birds/widgets/custom_drawer.dart';
import 'package:neuchatel_birds/widgets/phone_bar.dart';
import 'package:neuchatel_birds/section/header_section.dart';
import 'package:neuchatel_birds/widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => HomeState();
}

class HomeState extends State<HomePage> {
  final scrollController = ScrollController();
  double scrollPosition = 0;

  @override
  void initState() {
    scrollController.addListener(() {
      setState(() => scrollPosition = scrollController.position.pixels);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO 1.0 !
    // À chaque changement de l'écran (dimension, orientation, scrolling, ...),
    // tous les widgets sont redessinés. C'est grâce à ce fonctionnement qu'il
    // est possible de rendre l'application responsive.
    //
    // Pour visualiser ce comportement :
    // 1. Lancer l'application sur Chrome.
    // 2. Redimensionner la fenêtre, scroller sur la page, ... et observer dans
    // la console que la page est alors redessinée.
    // 3. Vous pouvez maintenant commenter ce print.
    //
    print("[HomePage] Rebuilt at any change.");

    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive.getSize(context);
    double opacity = MakeItResponsive.computeOpacity(context, scrollPosition);
    return Scaffold(
      drawer: CustomDrawer(),
      // TODO 2.3 !
      // Sélectionner la bonne appBar (PhoneBar ou WebBar) en fonction du type
      // de l'appareil qui est utilisé.
      appBar: (screenSize == ScreenSize.phone) ? null : null,
      // Info : Desktop et Tablet sont considérés comme "Web".
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            HeaderSection(),
            ServiceSection(),
            Divider(color: Colors.black, thickness: 2.5),
            AboutMeSection(),
            Divider(color: Colors.black, thickness: 2.5),
            CarouselSection(),
            Divider(color: Colors.black, thickness: 2.5),
            QuoteSection(),
            Divider(color: Colors.black, thickness: 2.5),
            HelpSection(),
            ContactSection()
          ],
        ),
      ),
    );
  }
}
