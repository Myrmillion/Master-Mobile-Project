import 'package:flutter/material.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';
import 'package:neuchatel_birds/widgets/url_button.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.shade200,
      width: size.width,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          TitleText("Nous retrouvez :"),
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
                  UrlButton(name: "Facebook", url: "https://www.facebook.com"),
                  UrlButton(
                    name: "Instagram",
                    url: "https://www.instagram.com",
                  ),
                  UrlButton(name: "Twitter", url: "https://www.twitter.com"),
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
                  UrlButton(
                    name: "mail: oiseaux@neuchatel.ch",
                    url: "mailto:oiseaux@neuchatel.ch",
                  ),
                  UrlButton(
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
