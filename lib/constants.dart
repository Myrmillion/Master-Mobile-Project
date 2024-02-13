//ImagePath

import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/button_object.dart';
import 'package:neuchatel_birds/models/review.dart';
import 'package:neuchatel_birds/models/url_class.dart';
import 'package:neuchatel_birds/pages/next_page.dart';
import 'package:neuchatel_birds/widgets/hover_button.dart';
import 'package:neuchatel_birds/widgets/url_button.dart';

String birthdayImage = "assets/img/content/bday.jpg";
String brownieImage = "assets/img/content/brownie.jpg";
String cheesecakeImage = "assets/img/content/cheesecake.jpg";
String chocoImage = "assets/img/content/choco.jpg";
String cupcakeImage = "assets/img/content/cupcake.jpg";
String donutsImage = "assets/img/content/donuts.jpg";
String tiramisuImage = "assets/img/content/tiramisu.jpg";
String weddingImage = "assets/img/content/wedding.jpg";
String cupcakeLogo = "assets/img/content/cupcake.png";
String homeImage = "assets/img/content/home.jpg";
String athenaImage = "assets/img/content/athena.jpeg";
String pleaseImage = "assets/img/content/please.jpg";
String flowersImage = "assets/img/content/flowers.jpg";
String lecheImage = "assets/img/content/leche.jpg";
String babinesImage = "assets/img/content/babines.jpg";
String dogImage = "assets/img/content/dog.jpg";
String grumpyImage = "assets/img/content/grumpy.png";
String mouthImage = "assets/img/content/mouth.jpg";

//Color
Color pinkColor = Color.fromRGBO(231, 210, 209, 1);

//Button

List<ButtonObject> menuButton = [
  ButtonObject(text: "Ma cuisine", destination: NextPage()),
  ButtonObject(text: "Mes recettes", destination: NextPage()),
  ButtonObject(text: "Blog", destination: NextPage())
];

List<HoverButton> menuButtonHover() =>
    menuButton.map((button) => HoverButton(button: button)).toList();

List<ButtonObject> containerButton = [
  ButtonObject(
    text: "Telephone",
    destination: NextPage(),
    icon: Icon(Icons.phone),
  ),
  ButtonObject(
    text: "Mail",
    destination: NextPage(),
    icon: Icon(Icons.mail),
  ),
  ButtonObject(
    text: "Visio",
    destination: NextPage(),
    icon: Icon(Icons.video_call),
  )
];

List<FloatingActionButton> getFloating() => containerButton
    .map((btn) => FloatingActionButton(
          onPressed: null,
          child: btn.icon,
          backgroundColor: pinkColor,
          heroTag: btn.text,
        ))
    .toList();

List<Widget> getCardHoverButton() => containerButton
    .map((e) => Expanded(child: HoverButton(button: e)))
    .toList();

List<UrlClass> networks = [
  UrlClass(name: "Facebook", url: "https://www.facebook.com"),
  UrlClass(name: "Instagram", url: "https://www.instagram.com"),
  UrlClass(name: "Twitter", url: "https://www.twitter.com"),
];

List<UrlButton> getSocialButtons() =>
    networks.map((e) => UrlButton(urlClass: e)).toList();

//AboutMe
String aboutMe =
    "Ne vous fiez pas à mes apparences. Sous mon air sauvage se cache un fin gourmet.\n Grâce à mes fines grittes et mes coussinets moelleux, je saurai vous préparer de succulents petits plats.";

//Quote
String quote =
    "Pour bien cuisiner il faut de bons ingrédients, un palais, du coeur et des amis.";
String author = "Pierre Perret";

//Review
Review archi = Review(
    name: "Archibald",
    image: grumpyImage,
    comment: "Horrible ! Ces donuts étaient trop bons");
Review moustache =
    Review(name: "Moustache", image: pleaseImage, comment: "Gâteauuuuuuu!");
Review fleur = Review(
    name: "Fleur",
    image: flowersImage,
    comment: "C'était trop bon! J'ai même gardé la déco fleur du gâteau");
Review leche = Review(
    name: "Mistigri",
    image: lecheImage,
    comment: "Je m'en lèche encore les babines de mon cookie");
Review gourmand = Review(
    name: "Gourmand", image: mouthImage, comment: "Humain! Encore du gâteau");
Review dog = Review(
    name: "Medor",
    image: dogImage,
    comment:
        "Depuis que j'ai gouté les cupcakes d4athena, je me déguise qu'lle me prenne pour un chat");
