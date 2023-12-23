import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/customsection.dart';

class DarkLips extends StatelessWidget {
  const DarkLips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark Lips', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            buildContentCard(
              'Dark Lips',
              [
                const Text(
                  'Discoloration of lips due to sun exposure, dehydration, and low-quality lip products.',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/Lips/main(darklips).jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                buildSectionWithTitle('Useful Tips', [
                  '• Exfoliate the lips regularly.',
                  '• Stay hydrated.',
                  '• Use a lip balm with SPF 30 or above.',
                  '• Do not use low-quality lip cosmetics.',
                ]),
              ],
            ),
            buildContentCard(
              'The Lemon Lip Scrub Recipe',
              [
                buildSectionWithTitle('Ingredients:', [
                  '• 2 teaspoons sugar',
                  '• 1 teaspoon honey',
                  '• 1 teaspoon olive oil',
                  '• Juice of 1 lemon',
                ]),
                buildImageSection('assets/Lips/4.jpg'),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to prepare', [
                  'In a clean bowl add all the ingredients and mix them together very well to form the scrub.',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to Use', [
                  '• Exfoliate the lips with the scrub gently for 2 minutes in a circular motion.',
                  '• Remove the scrub with a damp tissue or towel.',
                  '• Apply lip balm.',
                  '• Repeat 2-3 times a week.',
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
                  child: const Text('• Stylecraze - Get Rid of Dark Lips', style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
