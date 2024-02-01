import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';

class ContainerTextAndImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2.5,
      width: size.width,
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.5),
          child: Text(
            "Des gâteaux pour les gourmants à 4 pattes",
            style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.75),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(homeImage).image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
