import 'package:flutter/material.dart';
import 'package:neuchatel_birds/pages/next_page.dart';

class BtnDefinition {
  BtnDefinition({required this.text, this.icon, Widget? destination}) {
    this.destination = destination ?? NextPage();
  }

  final String text;
  final Icon? icon;
  late final Widget destination;
}
