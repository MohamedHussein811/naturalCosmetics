// home_page.dart

import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import 'package:natural_cosmetics/View/Screens/teeth_screens/teethdiscoloration.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';

class TeethPage extends StatelessWidget {
  const TeethPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/Teeth/TeethDiscoloration.jpg',
        title: 'Discoloration',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TeethDiscoloration()),
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
            const Header(title: "Teeths"),
            CustomGrid(items: gridItems),
          ],
        ),
      ),
    );
  }
}

