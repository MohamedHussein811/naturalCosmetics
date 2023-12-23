import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../../Widgets/customsection.dart';

class Eczema extends StatelessWidget {
  const Eczema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eczema', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            buildContentCard(
              'Eczema',
              [
                const Text(
                  'There are seven types of eczema, but the most common type is atopic dermatitis. "Atopic dermatitis" or "atopic eczema”. It is a chronic non-contagious condition that occasionally flares up. Researchers are aware that a combination of environmental stimuli and genetics leads to the development of eczema, even though the exact cause of the condition is unknown. A lot of eczema sufferers also report having food allergies, allergic asthma, and hay fever.',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                buildImageSection('assets/Skin/main(eczema).jpg'),
                SizedBox(height: 10),
                buildSectionWithTitle('It can occur due to:', [
                  '• An overactive immune system that makes the skin barrier dry, itchy, and irritating.',
                ]),
                SizedBox(height: 10),
                buildSectionWithTitle('Useful Tips:', [
                  '• Moisturize your skin regularly or when your skin becomes dry.',
                  '• Take baths or showers with warm, not hot, water.',
                  '• Stay hydrated and drink at least eight glasses of water each day.',
                  '• Wear loose clothes made of cotton and other natural materials. Wash new clothing before wearing it and avoid wool or synthetic fibers.',
                  '• Manage your stress and emotional triggers.',
                  '• Avoid allergens and irritants.',
                ]),
              ],
            ),
            buildContentCard(
              'The Colloidal Oatmeal Bath Recipe:',
              [
                buildSectionWithTitle('Ingredients:', [
                  '• Water',
                  '• 1-2 cups of oats',
                  '• Coconut oil',
                ]),
                buildImageSectionRow([
                  'assets/Skin/15.jpg',
                  'assets/Skin/16.jpg',
                ]),
                SizedBox(height: 10),
                buildSectionWithTitle('How to prepare', [
                  '• Grind 1 cup of oats in a blender to a really fine powder.',
                  '• Fill the bathtub with warm water (avoid hot water as it can aggravate the inflamed skin).',
                  '• Mix the finely grinded oats with the warm water (1 cup of oats or more depending on the size of your bathtub) using your hand until the water is milky and feels silky.',
                ]),
                SizedBox(height: 10),
                buildSectionWithTitle('How to use', [
                  '• Soak your body in the oatmeal bath for 10-15 minutes to relieve eczema itchiness and moisturize your skin then wash your body with lukewarm water and dry it.',
                  '• Apply coconut oil to areas of eczema to moisturize the skin and retain moisture.',
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
