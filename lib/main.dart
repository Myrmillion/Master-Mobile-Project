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
      theme: ThemeData(primaryColor: Color.fromARGB(255, 0, 201, 201)),
      home: HomePage(),
    );
  }
}
