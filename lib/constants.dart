//ImagePath

import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/btn_info.dart';
import 'package:neuchatel_birds/models/help.dart';

// Colors

const themeColor = Color.fromARGB(255, 244, 124, 31);
const themeColorLight = Color.fromARGB(255, 255, 247, 242);

// Images

const logo = "assets/img/content/logo.png";
const back = "assets/img/content/back.jpg";

const search = "assets/img/content/search.png";
const note = "assets/img/content/note.jpg";
const house = "assets/img/content/house.png";

const me = "assets/img/content/me.jpg";

const busard = "assets/img/content/busard.jpg";
const crecerelle = "assets/img/content/crecerelle.jpg";
const tetras = "assets/img/content/tetras.jpg";
const martin = "assets/img/content/martin.jpg";
const pic = "assets/img/content/pic.jpg";
const merle = "assets/img/content/merle.jpg";

const helpImg1 = "assets/img/content/help1.jpg";
const helpImg2 = "assets/img/content/help2.jpg";
const helpImg3 = "assets/img/content/help3.jpg";
const helpImg4 = "assets/img/content/help4.jpg";
const helpImg5 = "assets/img/content/help5.jpg";
const helpImg6 = "assets/img/content/help6.jpg";

// Buttons information

final menuInfo = [
  BtnInfo(text: "Littoral"),
  BtnInfo(text: "Montagnes"),
  BtnInfo(text: "Forum")
];

final quickInfo = [
  BtnInfo(text: "Newsletter", icon: Icon(Icons.newspaper)),
  BtnInfo(text: "Faire un don", icon: Icon(Icons.payments)),
  BtnInfo(text: "Shop", icon: Icon(Icons.storefront))
];

// About me

const aboutMe =
    "Habitant de Neuchâtel, je suis passionné par les oiseaux de notre région. J'ai créé ce site pour partager ma passion avec vous. N'hésitez pas à me contacter pour toute question ou suggestion.";

// Quote

const quote = "❝ Même quand l'oiseau marche, on sent qu'il a des ailes. ❞";
const author = "— Antoine-Marin Lemierre";

// Helps

final help1 = Help(
  name: "Sandrine",
  image: helpImg1,
  comment:
      "Je suis une ornithologue passionnée par les oiseaux de nos régions.",
);
final help2 = Help(
  name: "Patrick",
  image: helpImg2,
  comment:
      "Je suis passionné par les oiseaux et je suis heureux de partager ma passion.",
);
final help3 = Help(
  name: "Jacqueline",
  image: helpImg3,
  comment: "Moi, mon oiseau préféré est de loin le pygargue à tête blanche !",
);
final help4 = Help(
  name: "Pauline",
  image: helpImg4,
  comment:
      "J'aimerais un jour pouvoir m'envoler telle la majestueuse autruche.",
);
final help5 = Help(
  name: "Baptiste",
  image: helpImg5,
  comment:
      "J'ai toujours rêvé d'être un oiseau, mais je suis allergique aux plumes.",
);
final help6 = Help(
  name: "François",
  image: helpImg6,
  comment:
      "Je parcours le monde pour les observer, les apprécier, les protégéer ... et parfois les manger.",
);
final helps = [help1, help2, help3, help4, help5, help6];
