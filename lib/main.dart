import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/pages/home_page.dart';

// TODO 0.0 !
// L'objectif de ce petit laboratoire est de montrer quelques étapes essentielles
// d'une application Flutter. Le travail à réaliser pour les TODOs est minime,
// car il vise à vous amener au travers des différentes parties de l'application
// pour vous montrer comment elles fonctionnent.
//
// L'application que vous allez découvrir a été réfléchie pour Flutter Web et
// est donc responsive. C'est l'intitulé de ce laboratoire, mais évidemment,
// elle peut être testée sur mobile (natif) sur vos émulateurs ou vos appareils.
//
// Sans complétion des TODOs, l'application fonctionne peut tout de même être
// lancée et testée, mais des erreurs et problèmes visuelles sont présents. Ils
// seront corrigés à mesure de la réalisation des TODOs.
//
//Pour voir à tout moment le résultat souhaité, vous pouvez consulter :
// https://myrmillion.github.io/

void main() {
  runApp(NeuchatelBirds()); // Start point of the application.
}

/// The root widget of the application.
class NeuchatelBirds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oiseaux de Neuchâtel',

      // TODO 3.0 !
      // En modifiant le thème de MaterialApp, il est possible d'adapter l'aspect
      // de tous les éléments de l'application. L'idée est de définir un style
      // par défaut pour obtenir une cohérence visuelle.
      //
      // L'idée est ici de vous montrer quelques exemples de personnalisation. Vous
      // en trouverez bien d'autres dans la documentation officielle de Flutter.
      //
      // Appliquer les changements listés ci-dessous et observer les résultats.
      //
      theme: ThemeData(
        cardTheme: CardTheme(
            // 1. Couleur de fond "themeColorLight" (c'est une constante).
            // 2. Couleur de surface transparente.
            ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            // 1. Texte/Icône (ce qui se trouve en avant) en noir.
            // 2. Fond en blanc.
            ),
        textButtonTheme: TextButtonThemeData(
            // 1. Texte en "themeColor" (c'est une constante).
            //    Hint : TextButton.styleFrom().
            ),
      ),
      home: HomePage(),
    );
  }
}
