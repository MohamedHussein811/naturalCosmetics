import 'package:flutter/material.dart';
import '../../../Model/constants.dart';
import '../../Widgets/customsection.dart';

class TeethDiscoloration extends StatelessWidget {
  const TeethDiscoloration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teeth Discoloration', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            buildContentCard(
              'Teeth Discoloration',
              [
                const Text(
                  'Changes in teeth color, such as yellowing, dullness, or the development of white or dark flecks. Causes include tobacco use, dental trauma, poor oral hygiene, and certain foods, drinks, and medications.',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                buildImageSection('assets/Teeth/main.jpg'),
                const SizedBox(height: 10),
                buildSectionWithTitle('Useful Tips', [
                  '• Avoid smoking.',
                  '• Brush the teeth regularly.',
                  '• Limit coffee and tea intake.',
                  '• Never underestimate the power of teeth flossing.',
                ]),
              ],
            ),
            buildContentCard(
              'The Strawberries Recipe',
              [
                buildSectionWithTitle('Ingredients', [
                  '• 2 strawberries',
                  '• 1 teaspoon lemon juice',
                  '• 1 teaspoon water',
                ]),
                buildImageSectionRow(['assets/Teeth/1.jpg', 'assets/Teeth/2.jpg']),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to Prepare', [
                  '• Mash the strawberries to get the strawberries pulp.',
                  '• Add the strawberries pulp, lemon juice, and water in a clean bowl.',
                  '• Mix them very well to get a paste.',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to Use', [
                  '• Put a little bit of the paste on a toothbrush.',
                  '• Apply it on the teeth for 3 minutes.',
                  '• Rinse it with water after the time is up.',
                  '• Brush the teeth with regular toothpaste.',
                  '• Repeat it once a week.',
                ]),
              ],
            ),
            buildContentCard(
              'The Banana peel Recipe',
              [
                buildSectionWithTitle('Ingredients', [
                  '• 1 banana peel',
                  '• 1 teaspoon lemon juice',
                  '• 1 teaspoon toothpaste',
                ]),
                buildImageSectionRow(['assets/Teeth/3.jpg', 'assets/Teeth/4.jpg']),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to Prepare', [
                  '• Rub the banana peel with a spoon and get the inner content of it then add it in a clean bowl.',
                  '• Add the lemon juice and toothpaste to the bowl.',
                  '• Mix all the ingredients very well to form a homogenous mixture.',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to Use', [
                  '• Put a little bit of this mixture to a toothbrush.',
                  '• Brush the teeth for 1 or 2 minutes.',
                  '• Repeat 3-4 times a week for better results.',
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
                  child: const Text('• Green Dental Smiles - 5 Home Remedies for Teeth Whitening', style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
                InkWell(
                  onTap: () {
                    // Open the link when tapped
                    // You can implement URL opening logic here
                  },
                  child: const Text('• ScienceDirect - A review on natural teeth whitening', style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
