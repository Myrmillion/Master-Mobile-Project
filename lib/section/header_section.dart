import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';
import 'package:neuchatel_birds/widgets/quick_access.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackground(MediaQuery.of(context).size.height),
        _buildTitle(MakeItResponsive.getSize(context)),
        _buildQuickAccess(),
      ],
    );
  }

  Widget _buildBackground(double height) {
    return Container(
      height: height / 2.75,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(back).image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTitle(ScreenSize screenSize) {
    return Positioned.fill(
      child: Align(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.5),
          child: Text(
            "Les oiseaux de nos régions",
            style: TextStyle(
              fontSize: screenSize == ScreenSize.phone ? 28.0 : 48.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: themeColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  Widget _buildQuickAccess() {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          child: QuickAccess(),
        ),
      ),
    );
  }
}
