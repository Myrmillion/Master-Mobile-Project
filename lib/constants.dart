//ImagePath

import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/button_object.dart';
import 'package:neuchatel_birds/models/review.dart';
import 'package:neuchatel_birds/pages/next_page.dart';
import 'package:neuchatel_birds/widgets/hover_button.dart';

// Colors

Color titleColor = Color.fromARGB(255, 244, 124, 31);

// Images
String logo = "assets/img/content/logo.png";
String back = "assets/img/content/back.jpg";

String search = "assets/img/content/search.png";
String note = "assets/img/content/note.jpg";
String house = "assets/img/content/house.png";

String me = "assets/img/content/me.jpg";

String busard = "assets/img/content/busard.jpg";
String crecerelle = "assets/img/content/crecerelle.jpg";
String tetras = "assets/img/content/tetras.jpg";
String martin = "assets/img/content/martin.jpg";
String pic = "assets/img/content/pic.jpg";
String merle = "assets/img/content/merle.jpg";

String helpImg1 = "assets/img/content/help1.jpg";
String helpImg2 = "assets/img/content/help2.jpg";
String helpImg3 = "assets/img/content/help3.jpg";
String helpImg4 = "assets/img/content/help4.jpg";
String helpImg5 = "assets/img/content/help5.jpg";
String helpImg6 = "assets/img/content/help6.jpg";

//Button
List<ButtonObject> menuButton = [
  ButtonObject(text: "Littoral", destination: NextPage()),
  ButtonObject(text: "Montagnes", destination: NextPage()),
  ButtonObject(text: "Forum", destination: NextPage())
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
          heroTag: btn.text,
        ))
    .toList();

List<Widget> getCardHoverButton() => containerButton
    .map((e) => Expanded(child: HoverButton(button: e)))
    .toList();

//AboutMe
String aboutMe =
    "Habitant de Neuchâtel, je suis passionné par les oiseaux de notre région. J'ai créé ce site pour partager ma passion avec vous. N'hésitez pas à me contacter pour toute question ou suggestion.";

//Quote
String quote = "Même quand l'oiseau marche, on sent qu'il a des ailes.";
String author = "Antoine-Marin Lemierre";

//Review
Help help1 = Help(
  name: "Sandrine",
  image: helpImg1,
  comment:
      "Je suis une ornithologue passionnée par les oiseaux de nos régions.",
);
Help help2 = Help(
  name: "Patrick",
  image: helpImg2,
  comment:
      "Je suis passionné par les oiseaux et je suis heureux de partager ma passion.",
);
Help help3 = Help(
  name: "Jacqueline",
  image: helpImg3,
  comment: "Moi, mon oiseau préféré est de loin le pygargue à tête blanche !",
);
Help help4 = Help(
  name: "Pauline",
  image: helpImg4,
  comment:
      "J'aimerais un jour pouvoir m'envoler telle la majestueuse autruche.",
);
Help help5 = Help(
  name: "Baptiste",
  image: helpImg5,
  comment:
      "J'ai toujours rêvé d'être un oiseau, mais je suis allergique aux plumes.",
);
Help help6 = Help(
  name: "François",
  image: helpImg6,
  comment:
      "Je parcours le monde pour les observer, les apprécier, les protégéer ... et parfois les manger.",
);
