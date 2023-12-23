import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/customsection.dart';

class Dandruff extends StatelessWidget {
  const Dandruff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dandruff', style: TextStyle(color:Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            buildContentCard(
              'Dandruff',
              [
                const Text(
                  'Dandruff is a chronic condition characterized by itchy scalp and the presence of excessive shedding of dead cells from the scalp. It can occur due to:',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/Hair/main.jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                buildSectionWithTitle('It can occur due to', [
                  '• Dry scalp.',
                  '• Oily hair.',
                  '• Excessive washing of hair.',
                  '• Hormonal fluctuations and stress.',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('Tips to prevent the progression of dandruff', [
                  '• Avoid washing your hair with hot water as it leads to dryness of the scalp.',
                  '• Avoid stress and anxiety.',
                  '- Use antifungal shampoo 3 times per week.',
                  '• Eat food rich in omega-3 fatty acids and anti-inflammatory food such as green tea.',
                ]),
              ],
            ),
            buildContentCard(
              'The Lemon and Ginger Recipe',
              [
                buildSectionWithTitle('Ingredients:', [
                  '• 1 tablespoon Lemon juice.',
                  '• 1 tablespoon Olive oil.',
                  '• 1 tablespoon Ginger juice.',
                ]),
                buildImageSectionRow([
                  'assets/Hair/1.jpg',
                  'assets/Hair/2.jpg',
                  'assets/Hair/3.jpg',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to prepare', [
                  '• A mixture of fresh lemon juice, olive oil, and fresh ginger juice is prepared.',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to use', [
                  '• The mixture is applied to the scalp.',
                  '• Massage the scalp gently for a few minutes.',
                  '• Leave this mixture on the scalp for an hour.',
                  '• Wash hair with warm water.',
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
