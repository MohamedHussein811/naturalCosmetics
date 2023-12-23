import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/customsection.dart';

class ChappedLips extends StatelessWidget {
  const ChappedLips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapped Lips', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            buildContentCard(
              'Chapped Lips',
              [
                const Text(
                  'Dry, cracked lips caused by dry, cold weather, sun exposure, or dehydration.',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/Lips/main(chappedlips).jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                buildSectionWithTitle('Useful Tips', [
                  '• Choose non-irritating lip products.',
                  '• Apply sunscreen on the lips. ',
                  '• Apply lip balm throughout the day and before going to bed. ',
                  '• Stay hydrated.',
                  '• Stop licking or biting the lips. ',
                  '• Avoid smoking.  ',
                ]),
              ],
            ),
            buildContentCard(
              'The Honey Lip Mask Recipe',
              [
                buildSectionWithTitle('Ingredients:', [
                  '• 2 tablespoon Honey ',
                  '• 1 Vitamin E capsule ',
                  '• 1 tablespoon shea butter',
                ]),
                buildImageSectionRow([
                  'assets/Lips/1.jpg',
                  'assets/Lips/2.jpg',
                  'assets/Lips/3.jpg',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to prepare', [
                  '• Mix the vitamin E and the honey in a clean bowl very well to form a homogenous mixture.',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to use', [
                  '• Apply the mixture to the lips then add a layer of shea butter on it.',
                  '• Leave it for 15 minutes or overnight for better results.',
                  '• Remove it with a damp tissue or towel.',
                  '• Repeat it once a day. ',
                ]),
              ],
            ),
            buildContentCard(
              'Read more:',
              [
                InkWell(
                  onTap: () {
                    // Open the link when tapped
                    // You can implement URL opening logic here
                  },
                  child: const Text('• Link 1', style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
                InkWell(
                  onTap: () {
                    // Open the link when tapped
                    // You can implement URL opening logic here
                  },
                  child: const Text('• Link 2', style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
