import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/pages/home_page.dart';

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
      theme: ThemeData(
        cardTheme: CardTheme(
          color: themeColorLight,
          surfaceTintColor: Colors.transparent,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: themeColorLight,
          foregroundColor: Colors.black,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: themeColor),
        ),
      ),
      home: HomePage(),
    );
  }
}
