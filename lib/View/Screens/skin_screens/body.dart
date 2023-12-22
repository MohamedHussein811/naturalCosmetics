// home_page.dart

import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';
import 'body_screens/eczema.dart';
import 'body_screens/feetodor.dart';
import 'face_screens/activeacne.dart';
import 'face_screens/blackheads.dart';
import 'face_screens/whiteheads.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/Skin/Eczema.jpg',
        title: 'Eczema',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Eczema()),
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
            const Header(title: "Body"),
            CustomGrid(items: gridItems),
          ],
        ),
      ),
    );
  }
}

