// home_page.dart

import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';
import 'brittlenails.dart';

class NailPage extends StatelessWidget {
  const NailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/Nails/BrittleNails.jpg',
        title: 'Brittle Nails',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BrittleNails()),
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
            const Header(title: "Nails"),
            CustomGrid(items: gridItems),
          ],
        ),
      ),
    );
  }
}

