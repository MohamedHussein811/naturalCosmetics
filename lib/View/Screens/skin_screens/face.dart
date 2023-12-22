// home_page.dart

import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';
import 'face_screens/activeacne.dart';
import 'face_screens/blackheads.dart';
import 'face_screens/whiteheads.dart';

class FacePage extends StatelessWidget {
  const FacePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/Skin/ActiveAcne.jpg',
        title: 'Active Acne',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ActiveAcne()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Skin/BlackHeads.jpg',
        title: 'Black Heads',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BlackHeads()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Skin/WhiteHeads.jpg',
        title: 'White Heads',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WhiteHeads()),
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
            const Header(title: "Face"),
            CustomGrid(items: gridItems),
          ],
        ),
      ),
    );
  }
}

