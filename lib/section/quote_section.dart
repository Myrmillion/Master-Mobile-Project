import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/widgets/title_text.dart';

class QuoteSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40),
      child: Card(
          color: pinkColor,
          elevation: 7,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Text(
                quote,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Divider(),
              Row(
                children: [
                  Expanded(child: Container()),
                  TitleText(string: author)
                ],
              )
            ]),
          )),
    );
  }
}
