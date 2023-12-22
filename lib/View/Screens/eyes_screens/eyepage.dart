
import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import 'package:natural_cosmetics/View/Screens/eyes_screens/undereyebags.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';
import 'darkcircles.dart';

class EyesPage extends StatelessWidget {
  const EyesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/Eyes/DarkCircles.jpg',
        title: 'Dark Circles',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DarkCircles()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Eyes/UnderEyeBags.jpg',
        title: 'Under Eye Bags',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const UnderEyeBags()),
          );
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(title: "Eyes"),
            CustomGrid(items: gridItems),
          ],
        ),
      ),
    );
  }
}

