import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/models/carousel_image.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';

class CarouselSection extends StatefulWidget {
  @override
  createState() => CarouselState();
}

class CarouselState extends State<CarouselSection> {
  int index = 0;

  final controller = CarouselController();
  final images = [
    CarouselImage(name: "Busard", path: busard),
    CarouselImage(name: "Faucon", path: crecerelle),
    CarouselImage(name: "Grand Tétras", path: tetras),
    CarouselImage(name: "Martin-pêcheur", path: martin),
    CarouselImage(name: "Pic noir", path: pic),
    CarouselImage(name: "Merle", path: merle),
  ];

  Widget _buildItems(CarouselImage image) {
    return Container(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.75),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            image.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(image.path, fit: BoxFit.cover).image,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPhone = MakeItResponsive.getSize(context) == ScreenSize.phone;
    final options = CarouselOptions(
      autoPlay: true,
      enlargeCenterPage: true,
      height: isPhone ? 250.0 : 400.0,
      onPageChanged: (value, _) => setState(() => index = value),
    );

    buildNameOrNumber(int i) {
      return InkWell(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
          // TODO 2.4 !
          // En fonction du type d'appareil, afficher le numéro d'index (phone)
          // ou le nom nom complet de l'oiseau (autres).
          child: Text(isPhone ? 'todo' : 'todo'),
        ),
        onTap: () => controller.animateToPage(i),
      );
    }

    buildSelectIndicator(int i) {
      return Visibility.maintain(
        visible: (index == i),
        child: AnimatedOpacity(
          opacity: 1,
          duration: Duration(milliseconds: 500),
          child: Container(
            height: 5,
            width: 25,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(2.5),
            ),
          ),
        ),
      );
    }

    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TitleText("Le Carousel des oiseaux :"),
          ),
          const SizedBox(height: 10.0),
          CarouselSlider(
            items: images.map((img) => _buildItems(img)).toList(),
            options: options,
            carouselController: controller,
          ),
          Card(
            elevation: 2.0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: isPhone ? 15.0 : 25.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < images.length; i++) ...[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: isPhone ? 10.0 : 12.5,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          buildNameOrNumber(i),
                          buildSelectIndicator(i),
                        ],
                      ),
                    )
                  ]
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
