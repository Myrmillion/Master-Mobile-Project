import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';

class AboutMeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(30),
      width: size.width,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TitleText("À propos de moi :"),
          ),
          const SizedBox(height: 7.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  aboutMe,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: size.height / 6,
                  width: size.height / 6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(size.height / 6),
                    child: Image.asset(me, fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
