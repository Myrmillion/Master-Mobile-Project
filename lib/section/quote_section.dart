import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';

class QuoteSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40),
      child: Card(
        elevation: 2.0,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                quote,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  TitleText(
                    author,
                    fontStyle: FontStyle.italic,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
