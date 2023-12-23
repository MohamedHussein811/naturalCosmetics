import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import 'package:natural_cosmetics/View/Screens/hair_screens/damagedhair.dart';
import 'package:natural_cosmetics/View/Screens/hair_screens/dryhair.dart';
import 'package:natural_cosmetics/View/Screens/hair_screens/hairloss.dart';
import 'package:natural_cosmetics/View/Screens/hair_screens/splitends.dart';
import '../../Widgets/custom_grid.dart';
import '../../Widgets/header.dart';
import 'dandruff.dart';

class HairPage extends StatelessWidget {
  const HairPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<CustomGridItem> gridItems = [
      CustomGridItem(
        imagePath: 'assets/Hair/HairLoss.jpg',
        title: 'Hair loss',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HairLoss()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Hair/Dandruff.jpg',
        title: 'Dandruff',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Dandruff()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Hair/DryHair.jpg',
        title: 'Dry Hair',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DryHair()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Hair/SplitEnds.jpg',
        title: 'Split Ends',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SplitEnds()),
          );
        },
      ),
      CustomGridItem(
        imagePath: 'assets/Hair/DamagedHair.jpg',
        title: 'Damaged Hair',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DamagedHair()),
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
            const Header(title: "Hair"),
            CustomGrid(items: gridItems),
          ],
        ),
      ),
    );
  }
}

