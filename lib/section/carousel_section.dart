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

  CarouselController _carouselController = CarouselController();
  List<CarouselImage> images = [
    CarouselImage(name: "Busard", path: busard),
    CarouselImage(name: "Faucon", path: crecerelle),
    CarouselImage(name: "Grand Tétras", path: tetras),
    CarouselImage(name: "Martin-pêcheur", path: martin),
    CarouselImage(name: "Pic noir", path: pic),
    CarouselImage(name: "Merle", path: merle),
  ];

  Widget _card(CarouselImage image) {
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
    final items = images.map((e) => _card(e)).toList();
    final screenSize = MakeItResponsive.getScreenSize(context);
    final options = CarouselOptions(
      autoPlay: true,
      height: screenSize == ScreenSize.phone ? 250 : 400,
      enlargeCenterPage: true,
      onPageChanged: (newIndex, _) => setState(() => index = newIndex),
    );
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TitleText("Le Carousel des oiseaux :"),
          ),
          const SizedBox(height: 10.0),
          CarouselSlider(
            items: items,
            options: options,
            carouselController: _carouselController,
          ),
          Card(
            elevation: 2.0,
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < images.length; i++) ...[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 5.0,
                            ),
                            child: Text(
                              (screenSize != ScreenSize.phone)
                                  ? images[i].name
                                  : (i + 1).toString(),
                            ),
                          ),
                          onTap: () => _carouselController.animateToPage(i),
                        ),
                        Visibility(
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainState: true,
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
                        )
                      ],
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
