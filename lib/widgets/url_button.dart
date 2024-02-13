import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/url_class.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlButton extends StatelessWidget {
  final UrlClass urlClass;

  UrlButton({required this.urlClass});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: launch, child: Text(urlClass.name));
  }

  launch() async {
    if (!await launchUrl(Uri.parse(urlClass.url))) {
      throw 'Impossible de lancer ${urlClass.name}';
    }
  }
}
