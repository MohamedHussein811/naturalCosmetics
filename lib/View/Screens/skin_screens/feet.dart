// home_page.dart

import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';
import 'body_screens/feetodor.dart';

class FeetPage extends StatelessWidget {
  const FeetPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/Skin/FootOdor.jpg',
        title: 'Foot Odor',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FootOdor()),
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
            const Header(title: "Feet"),
            CustomGrid(items: gridItems),
          ],
        ),
      ),
    );
  }
}

