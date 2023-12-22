// home_page.dart

import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';

import '../skin_screens/skinpage.dart';

class HairPage extends StatelessWidget {
  const HairPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/HairLoss.jpg',
        title: 'Hair loss',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SkinPage()),
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
            Header(),
            CustomGrid(items: gridItems),
          ],
        ),
      ),
    );
  }
}

