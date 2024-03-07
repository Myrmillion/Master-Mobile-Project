import 'package:flutter/material.dart';
import 'package:neuchatel_birds/constants.dart';
import 'package:neuchatel_birds/models/make_it_responsive.dart';
import 'package:neuchatel_birds/widgets/custom_button.dart';

// TODO 2.6 !
// Expliquer.

class QuickAccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isPhone = MakeItResponsive.getSize(context) == ScreenSize.phone;

    Widget buildIcons() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: quickInfo
            .map(
              (btn) => FloatingActionButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => btn.destination),
                ),
                child: btn.icon,
                heroTag: btn.text,
              ),
            )
            .toList(),
      );
    }

    return SizedBox(
      width: (isPhone) ? width / 1.25 : width / 1.5,
      child: (isPhone) ? buildIcons() : _buildTexts(),
    );
  }

  Widget _buildTexts() {
    return Container(
      height: 40,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: quickInfo
              .map((def) => Expanded(child: CustomButton(def)))
              .toList(),
        ),
      ),
    );
  }
}
