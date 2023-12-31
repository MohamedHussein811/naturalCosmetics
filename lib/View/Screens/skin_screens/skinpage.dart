// home_page.dart

import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import 'package:natural_cosmetics/View/Screens/skin_screens/face.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';
import 'body.dart';
import 'feet.dart';
import 'hands.dart';

class SkinPage extends StatelessWidget {
  const SkinPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/Skin/Face.jpg',
        title: 'Face',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FacePage()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Skin/Body.jpg',
        title: 'Body',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BodyPage()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Skin/Hands.jpg',
        title: 'Hands',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HandsPage()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Skin/Feet.jpg',
        title: 'Feet',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FeetPage()),
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
            const Header(title: "Skin"),
            CustomGrid(items: gridItems),
          ],
        ),
      ),
    );
  }
}

