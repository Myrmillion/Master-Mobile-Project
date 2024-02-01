import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/models/make_it_responsive.dart';
import 'package:la_cuisine_dathena/section/about_me_section.dart';
import 'package:la_cuisine_dathena/section/carousel_section.dart';
import 'package:la_cuisine_dathena/section/contact_section.dart';
import 'package:la_cuisine_dathena/section/occasion_section.dart';
import 'package:la_cuisine_dathena/section/quote_section.dart';
import 'package:la_cuisine_dathena/section/review_section.dart';
import 'package:la_cuisine_dathena/widgets/drawer_small.dart';
import 'package:la_cuisine_dathena/widgets/phone_bar.dart';
import 'package:la_cuisine_dathena/section/top_stack.dart';
import 'package:la_cuisine_dathena/widgets/web_bar.dart';

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
      // print(_currentUserPosition);
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
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    double opacity = MakeItResponsive()
        .getScrollingOpacity(_currentUserPosition, size.height);
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: DrawerSmall(),
      appBar: (screenSize == ScreenSize.small)
          ? PhoneBar(opacity: opacity)
          : WebBar(size: size, opacity: opacity),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            TopStack(),
            OccasionSection(),
            AboutMeSection(),
            CarouselSection(),
            QuoteSection(),
            ReviewSection(),
            ContactSection()
          ],
        ),
      ),
    );
  }
}
