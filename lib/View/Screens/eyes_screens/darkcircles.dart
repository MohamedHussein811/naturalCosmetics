import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/customsection.dart';

class DarkCircles extends StatelessWidget {
  const DarkCircles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark Circles', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            buildContentCard(
              'Dark Circles',
              [
                const Text(
                  'Dark circles under the eyes occur when the skin beneath both eyes becomes darker than usual. It can be due to tiredness, lack of sleep, smoking, excessive alcohol consumption, stress, allergies, thyroid conditions, and old age.',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                Image.asset(
                  'assets/Eyes/main(darkcircles).jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                buildSectionWithTitle('It can occur due to:', [
                  '• Tiredness and lack of sleep',
                  '• Smoking',
                  '• Drinking too much alcohol ',
                  '• Stress',
                  '• Allergies',
                  '• Thyroid conditions',
                  '• Old age',
                ]),
                buildSectionWithTitle('Useful Tips:', [
                  '• Get enough sleep.',
                  '• Elevate your head during sleep.',
                  '• Apply cold compresses.',
                  '• Minimize sun exposure.',
                  '• Use retinoid creams to promote collagen production.',
                ]),
              ],
            ),
            buildContentCard(
              'The Green Tea Recipe:',
              [
                buildSectionWithTitle('Ingredients:', ['• 2 cold green tea bags']),
                buildImageSection('assets/Eyes/1.jpg'),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to prepare:', [
                  '• Add boiling water to the tea bags in a cup.',
                  '• Brew the tea bags for 5 – 10 minutes.',
                  '• Take out the tea bags and put them in the refrigerator to cool.',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to use:', [
                  'Gently place the tea bags over both eyes. Let them rest for 10-15 minutes, then remove the tea bags and rinse the area with water. Repeat regularly.',
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
                  child: const Text('• PharmEasy - Home Remedies for Dark Circles', style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
                InkWell(
                  onTap: () {
                    // Open the link when tapped
                    // You can implement URL opening logic here
                  },
                  child: const Text('• Research Square - Dark Circles Home Remedies', style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
