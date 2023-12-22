// home_page.dart

import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import 'package:natural_cosmetics/View/Screens/lips_screens/chappedlips.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';
import 'darklips.dart';

class LipsPage extends StatelessWidget {
  const LipsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/Lips/ChappedLips.jpg',
        title: 'Chapped Lips',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChappedLips()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Lips/DarkLips.jpg',
        title: 'Dark Lips',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DarkLips()),
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
            const Header(title: "Lips"),
            CustomGrid(items: gridItems),
          ],
        ),
      ),
    );
  }
}

