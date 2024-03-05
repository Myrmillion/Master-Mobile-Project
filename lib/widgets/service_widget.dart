import 'package:flutter/material.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';

class ServiceWidget extends StatefulWidget {
  ServiceWidget({required this.name, required this.path});

  final String name;
  final String path;

  @override
  createState() => OccasionState();
}

class OccasionState extends State<ServiceWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MakeItResponsive.getSize(context);
    final size = MediaQuery.of(context).size.width;
    final radius = (screenSize == ScreenSize.phone) ? size / 4 : size / 10;
    return Column(
      children: [
        SizedBox(
          child: CircleAvatar(
            radius: radius,
            backgroundColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: radius,
                backgroundColor: Colors.grey.shade50,
                backgroundImage: Image.asset(
                  widget.path,
                  fit: BoxFit.contain,
                ).image,
              ),
            ),
          ),
          // child: Image.asset(widget.path),
        ),
        const SizedBox(height: 5.0),
        Text(
          widget.name,
          style: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
