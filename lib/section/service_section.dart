import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';
import 'package:neuchatel_birds/widgets/service_widget.dart';
import 'package:neuchatel_birds/widgets/title_text.dart';

class ServiceSection extends StatelessWidget {
  final serviceWidgets = [
    ServiceWidget(name: "Recensement des espèces", path: note),
    const SizedBox(height: 25.0),
    ServiceWidget(name: "Création d'habitats", path: house),
    const SizedBox(height: 25.0),
    ServiceWidget(name: "Découvertes en groupes", path: search),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MakeItResponsive.getSize(context);
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TitleText("Nos prestations :"),
          ),
          const SizedBox(height: 15.0),
          if (screenSize == ScreenSize.phone) ...[
            SizedBox(child: Column(children: serviceWidgets))
          ] else ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: serviceWidgets,
            )
          ],
        ],
      ),
    );
  }
}
