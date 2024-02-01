import 'package:flutter/material.dart';

enum ScreenSize { small, medium, large }

class MakeItResponsive {
  double minPoint = 640;
  double maxPoint = 1000;

  ScreenSize getScreenSize(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (size.width > maxPoint) {
      return ScreenSize.large;
    } else if (size.width < minPoint) {
      return ScreenSize.small;
    } else {
      return ScreenSize.medium;
    }
  }

  Widget responsiveRows(List<Widget> widgets, ScreenSize screenSize) {
    int maxItems = 0;

    switch (screenSize) {
      case ScreenSize.small:
        maxItems = 2;
        break;
      case ScreenSize.medium:
        maxItems = 3;
        break;
      case ScreenSize.large:
        maxItems = 4;
        break;
    }

    List<List<Widget>> parsedList = toArrays(widgets, maxItems);
    List<Column> columns = parsedList.map((e) => Column(children: e)).toList();

    return Row(
      children: columns,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

  List<List<Widget>> toArrays(List<Widget> widgets, int maxItems) {
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

  double getRatio(BuildContext context) {
    ScreenSize screenSize = getScreenSize(context);
    switch (screenSize) {
      case ScreenSize.small:
        return 0.4;
      case ScreenSize.medium:
        return 0.25;
      case ScreenSize.large:
        return 0.2;
    }
  }

  double getScrollingOpacity(double userPosition, double screenHeight) {
    double shouldBeOpaque = (screenHeight / 2);
    if (shouldBeOpaque <= userPosition) {
      return 1;
    } else {
      return userPosition / shouldBeOpaque;
    }
  }
}
