import 'package:flutter/material.dart';

// TODO 2.0 !
// Le but de cette classe est de faciliter la création d'une application qui
// soit responsive. En effet, avec Flutter, sur les applications mobiles, c'est
// un travail relativement "simple". Du moment qu'on travaille avec des Widgets
// adaptées tels que des "Column", "Row", "Expanded" ou "Flexible", cela suffit.
//
// En revanche, en prenant également en charge le web, l'utilisastion de ces
// Widget (bien qu'essentielle) ne suffit plus car la différence de taille entre
// les écrans est trop importantes. L'agencement ainsi que le comportement de
// l'application doivent désormais être adaptés aussi.
//
// Il n'y a pas de solution standard pour concevoir des applications responsives
// aussi bienpour le mobile et le web en FLutter, mais celle qui est proposée
// est une bonne base pour commencer.

// TODO 2.2 !
// La méthode getSize() est la plus importante et la plus utilisée dans cette
// application, dont l'utilisation sera montré dans les TODOs 2.x suivant.

// Les autres méthodes sont plus dédiées à des fonctionnalités spécifiques de
// l'application. Passez-les rapidement en revue pour voir à quoi elles servent,
// mais ne ce ne sont pas les plus importantes.

enum ScreenSize { phone, tablet, desktop }

class MakeItResponsive {
  // Attributes

  // Based on Bootstrap responsive breakpoints: https://kinsta.com/blog/responsive-web-design/
  static final double minimum = 768;
  static final double maximum = 992;

  // Public Methods

  static ScreenSize getSize(BuildContext context) {
    // TODO 2.1 !
    // Récupérer la largeur de l'écran pour déterminer le type d'appareil.
    final width = 0;
    // Hint : Utiliser "MediaQuery".
    // Info : Il serait tout à fait possible d'utiliser les utilitaires de
    // Flutter tels que Platform.isAndroid, Platform.isIOS ou encore kIsWeb pour
    // reconnaître la nature de l'appareil. Cependant l'idée est ici de montrer
    // l'utiilisation des dimmensions de l'écran.
    if (width < minimum) {
      return ScreenSize.phone;
    } else if (width < maximum) {
      return ScreenSize.tablet;
    } else {
      return ScreenSize.desktop;
    }
  }

  static Widget buildRows(BuildContext context, List<Widget> widgets) {
    final screenSize = getSize(context);
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

  static double computeRatio(BuildContext context) {
    final screenSize = getSize(context);
    switch (screenSize) {
      case ScreenSize.phone:
        return 0.4;
      case ScreenSize.tablet:
        return 0.25;
      case ScreenSize.desktop:
        return 0.2;
    }
  }

  static double computeOpacity(BuildContext context, double userPosition) {
    final height = MediaQuery.of(context).size.height;
    final isOpaque = (height / 2);
    return isOpaque <= userPosition ? 1 : userPosition / isOpaque;
  }

  // Private Methods

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
}
