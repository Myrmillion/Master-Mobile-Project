import 'package:flutter/material.dart';

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
    if (screenSize == ScreenSize.small) {
      maxItems = 2;
    } else if (screenSize == ScreenSize.medium) {
      maxItems = 3;
    } else {
      maxItems = 4;
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
    //Creer list vide
    List<List<Widget>> newList = [];

    //index
    int index = 0;

    //Creer des Lists vides correspondant au max
    for (int i = 0; i < maxItems; i++) {
      newList.add([]);
    }

    //Passe a travers list de base et peupler nouvelle
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

enum ScreenSize { small, medium, large }
