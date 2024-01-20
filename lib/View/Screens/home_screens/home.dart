// home_page.dart

import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';
import '../eyes_screens/eyepage.dart';
import '../hair_screens/hairpage.dart';
import '../lips_screens/lipspage.dart';
import '../nail_screens/nailpage.dart';
import '../skin_screens/skinpage.dart';
import '../teeth_screens/teethpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/Skin/Skin.jpg',
        title: 'Skin',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SkinPage()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Hair/Hair.jpg',
        title: 'Hair',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HairPage()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Nails/Nail.jpg',
        title: 'Nail',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NailPage()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Teeth/Teeth.jpg',
        title: 'Teeth',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TeethPage()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Lips/Lips.jpg',
        title: 'Lips',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LipsPage()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Eyes/Eyes.jpg',
        title: 'Eyes',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const EyesPage()),
          );
        },
      ),
    ];

    return Scaffold(
      body: Container(
        color: primaryColor,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(title: "PureGlow"),
                  CustomGrid(items: gridItems),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

