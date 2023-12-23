import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../../Widgets/customsection.dart';

class FootOdor extends StatelessWidget {
  const FootOdor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foot Odor', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Use the buildContentCard function to create sections with titles and content
            buildContentCard(
              'Foot Odor',
              [
                const Text(
                  'Smelly feet (bromodosis) is a very common medical problem, but the good news is that treating bromodosis is simple, quick, and affordable.',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                buildImageSection('assets/Skin/main(footodor).jpg'),
                const SizedBox(height: 10),
                buildSectionWithTitle(
                  'It can occur due to:',
                  [
                    '• Sweat accumulation and build up, which leads to bacterial growth on the skin which causes bad odors.',
                    '• Athlete\'s foot and other fungal infections.',
                  ],
                ),
                const SizedBox(height: 10),
                buildSectionWithTitle(
                  'Useful Tips:',
                  [
                    '• Wash your feet at least once a day (use an antibacterial soap if you can).',
                    '• Remove hard skin with a foot file and keep toenails short and clean.',
                    '• Wear breathable or natural fabrics on your feet, like cotton or leather.',
                    '• Let shoes dry out before wearing them again.',
                    '• Do not wear the same socks or shoes 2 days in a row nor wear tight shoes.',
                    '• Do not walk around barefoot in public places that are wet, like swimming pools and showers in gyms.',
                  ],
                ),
              ],
            ),
            // Use the buildContentCard function for other sections as well
            buildContentCard(
              'The Vinegar Recipe:',
              [
                buildSectionWithTitle(
                  'Ingredients:',
                  ['• Water', '• 1/3 cup of vinegar (white vinegar or apple cider vinegar)', '• Lavender oil', '• Baking soda'],
                ),
                buildImageSectionRow(['assets/Skin/17.jpg', 'assets/Skin/18.jpg', 'assets/Skin/19.jpg']),
                const SizedBox(height: 10),
                buildSectionWithTitle(
                  'How to prepare:',
                  ['• Fill a foot basin with warm or cold water.', '• Add 1/3 cup of white vinegar or apple cider vinegar.'],
                ),
                const SizedBox(height: 10),
                buildSectionWithTitle(
                  'How to use:',
                  [
                    '• Soak your feet in the foot bath for 15 minutes (can be repeated multiple times a day if needed) then rinse and dry your feet.',
                    '• Rub a few drops of lavender oil on your feet, especially between your toes.',
                    '• You can sprinkle some baking soda in your shoes to soak up the moisture and bad odor.',
                    '(Caution: avoid soaking your feet in vinegar in case of having any open wounds or sores)',
                  ],
                ),
              ],
            ),
            // Use the buildContentCard function for the "Read more" section
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
