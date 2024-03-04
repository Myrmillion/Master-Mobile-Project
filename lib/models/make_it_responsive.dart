import 'package:flutter/material.dart';

enum ScreenSize { phone, tablet, desktop }

class MakeItResponsive {
  // Attributes

  // Based on Bootstrap responsive breakpoints: https://kinsta.com/blog/responsive-web-design/
  static double minPoint = 768;
  static double maxPoint = 992;

  // Methods

  static ScreenSize getScreenSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < minPoint) {
      return ScreenSize.phone;
    } else if (width < maxPoint) {
      return ScreenSize.tablet;
    } else {
      return ScreenSize.desktop;
    }
  }

  static Widget responsiveRows(BuildContext context, List<Widget> widgets) {
    final screenSize = getScreenSize(context);
    int maxItems = 0;

    switch (screenSize) {
      case ScreenSize.phone:
        maxItems = 2;
        break;
      case ScreenSize.tablet:
        maxItems = 3;
        break;
      case ScreenSize.desktop:
        maxItems = 4;
        break;
    }

    final parsedList = _toArrays(widgets, maxItems);
    final columns = parsedList.map((e) => Column(children: e)).toList();

    return Row(
      children: columns,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

  static List<List<Widget>> _toArrays(List<Widget> widgets, int maxItems) {
    List<List<Widget>> newList = [];
    int index = 0;

    for (int i = 0; i < maxItems; i++) {
      newList.add([]);
    }

    for (int i = 0; i < widgets.length; i++) {
      if (index >= maxItems) {
        index = 0;
      }
      List<Widget> currentList = newList[index];
      currentList.add(widgets[i]);
      newList[index] = currentList;
      index++;
    }

    return newList;
  }

  static double getRatio(BuildContext context) {
    final screenSize = getScreenSize(context);
    switch (screenSize) {
      case ScreenSize.phone:
        return 0.4;
      case ScreenSize.tablet:
        return 0.25;
      case ScreenSize.desktop:
        return 0.2;
    }
  }

  static double getScrollingOpacity(double userPosition, double screenHeight) {
    final isOpaque = (screenHeight / 2);
    return isOpaque <= userPosition ? 1 : userPosition / isOpaque;
  }
}
