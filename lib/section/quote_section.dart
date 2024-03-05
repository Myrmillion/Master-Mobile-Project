import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';

class QuoteSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40.0),
      elevation: 2.0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
        child: Column(
          children: [
            Text(
              quote,
              style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
            ),
            TitleText(author, fontStyle: FontStyle.italic)
          ],
        ),
      ),
    );
  }
}
