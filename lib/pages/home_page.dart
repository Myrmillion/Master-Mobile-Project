import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';
import 'package:neuchatel_birds/section/about_me_section.dart';
import 'package:neuchatel_birds/section/carousel_section.dart';
import 'package:neuchatel_birds/section/contact_section.dart';
import 'package:neuchatel_birds/section/service_section.dart';
import 'package:neuchatel_birds/section/quote_section.dart';
import 'package:neuchatel_birds/section/review_section.dart';
import 'package:neuchatel_birds/widgets/drawer_small.dart';
import 'package:neuchatel_birds/widgets/phone_bar.dart';
import 'package:neuchatel_birds/section/top_stack.dart';
import 'package:neuchatel_birds/widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => HomeState();
}

class HomeState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();
  double _currentUserPosition = 0;

  setupScrollListener() {
    setState(() {
      _currentUserPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(setupScrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive.getScreenSize(context);
    double opacity = MakeItResponsive.getScrollingOpacity(
      _currentUserPosition,
      size.height,
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: DrawerSmall(),
      appBar: (screenSize == ScreenSize.phone)
          ? PhoneBar(opacity: opacity)
          : WebBar(size: size, opacity: opacity),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            TopStack(),
            ServiceSection(),
            Divider(color: Colors.black, thickness: 2.0),
            AboutMeSection(),
            Divider(color: Colors.black, thickness: 2.0),
            CarouselSection(),
            QuoteSection(),
            HelpSection(),
            ContactSection()
          ],
        ),
      ),
    );
  }
}
