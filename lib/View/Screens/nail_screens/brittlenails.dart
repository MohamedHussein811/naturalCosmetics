import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/customsection.dart';

class BrittleNails extends StatelessWidget {
  const BrittleNails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brittle Nails', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            buildContentCard(
              'Brittle Nails',
              [
                const Text(
                  'Almost everyone can have brittle nails. It is a frequent problem that results in split, thin, or weak nails. It may arise from an underlying condition like anemia or thyroid problems or from problems with moisture.',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 10),
                buildImageSection('assets/Nails/main.jpg'),
                const SizedBox(height: 10),
                buildSectionWithTitle('Useful Tips', [
                  '• Limit using nail polish.',
                  '• Moisturize the cuticles.',
                  '• Eat fruits and vegetables.',
                  '• Stay Hydrated.',
                  '• Don\'t bite the nails.',
                  '• Keep the nails clean.',
                ]),
              ],
            ),
            buildContentCard(
              'The Olive Oil Recipe',
              [
                buildSectionWithTitle('Ingredients:', [
                  '• 1 tablespoon aloe vera gel',
                  '• 2 tablespoons olive oil ',
                  '• 1 garlic clove',
                ]),
                buildImageSectionRow([
                  'assets/Nails/1.jpg',
                  'assets/Nails/2.jpg',
                  'assets/Nails/3.jpg',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to prepare', [
                  'Mix aloe vera gel and the olive oil in a clean bowl very well to form a serum.',
                  'Chop the garlic clove in a chopping machine to form a paste.',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to use', [
                  '• Rub the garlic paste to the nails, massage it in gentle circular motions and leave it for 10 minutes.',
                  '• Wash off and dry the nails.',
                  '• Now Apply the Serum onto the nails and massage it.',
                  '• Leave it for 2 hours or overnight for better results.',
                  '• Apply the Serum every night before bed and apply the garlic paste twice a week.',
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
