import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchButton extends StatelessWidget {
  LaunchButton({required this.name, required this.url});

  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: launch, child: Text(name));
  }

  launch() async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Impossible de lancer $name';
    }
  }
}
