import 'package:flutter/material.dart';
import 'package:neuchatel_birds/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oiseaux de Neuchâtel',
      theme: ThemeData(primaryColor: Color(0xFFF6F6F4)),
      home: HomePage(),
    );
  }
}
