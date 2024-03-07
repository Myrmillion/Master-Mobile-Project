import 'package:flutter/material.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';
import 'package:neuchatel_birds/widgets/launch_button.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.shade200,
      width: size.width,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          TitleText("Pour nous retrouver :"),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Text(
                    "Social",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 7.5),
                  LaunchButton(
                    name: "Facebook",
                    url: "https://www.facebook.com",
                  ),
                  LaunchButton(
                    name: "Instagram",
                    url: "https://www.instagram.com",
                  ),
                  LaunchButton(
                    name: "Twitter",
                    url: "https://www.twitter.com",
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Contactez nous",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 7.5),
                  LaunchButton(
                    name: "mail: oiseaux@neuchatel.ch",
                    url: "mailto:oiseaux@neuchatel.ch",
                  ),
                  LaunchButton(
                    name: "tel: 078/891.05.28",
                    url: "tel:0788910528",
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
