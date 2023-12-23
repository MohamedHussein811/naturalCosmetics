import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../Widgets/customsection.dart';

class UnderEyeBags extends StatelessWidget {
  const UnderEyeBags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Under-eye Bags', style: TextStyle(color: Colors.white)),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            buildContentCard(
              'Under-eye Bags',
              [
                const Text(
                  'Mild puffiness or swelling beneath the eyes is known as eye bags. It can occur due to aging, as the muscles and tissues supporting the eyelids deteriorate, and fat that supports the eyes can move to the lower eyelids, giving the appearance of puffiness.',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                Image.asset(
                  'assets/Eyes/main(undereyebags).jpg',
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                buildSectionWithTitle('It can occur due to', [
                  "• They're more common as you get older as the muscles that support your eyelids as well as the tissues surrounding your eyes deteriorate.",
                  '• Fat that supports the eyes can move to the lower eyelids, giving the appearance of puffiness.',
                ]),
                buildSectionWithTitle('Useful Tips', [
                  '• Use a cool compress.',
                  '• Cut down on fluids before bedtime and limit salt in your diet to reduce fluid retention that can cause bags under the eyes.',
                  '• Don\'t smoke.',
                  '• Get enough sleep.',
                  '• Sleep with your head slightly raised to prevent fluid accumulation around your eyes as you sleep.',
                  '• Reduce allergy symptoms as congestion and inflammation can exacerbate under-eye bags.',
                ]),
              ],
            ),
            buildContentCard(
              'The Cucumber Recipe:',
              [
                buildSectionWithTitle('Ingredients:', ['• 1 Cucumber']),
                buildImageSection('assets/Eyes/2.jpg'),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to prepare:', [
                  'Wash a fresh cold cucumber well then cut it into thin slices.',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to use:', [
                  'Gently put two cucumber slices on both eyes and leave them on until they warm up, then turn them over and leave them on until they warm up. Remove the slices and wash your face.',
                ]),
              ],
            ),
            buildContentCard(
              'The Black or Green Tea Recipe:',
              [
                buildSectionWithTitle('Ingredients:', ['• 2 cold black tea or green tea bags']),
                buildImageSectionRow([
                  'assets/Eyes/3.jpg',
                  'assets/Eyes/4.jpg',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to prepare:', [
                  '• Add boiling water to the tea bags in a cup.',
                  '• Brew the tea bags for 5 – 10 minutes.',
                  '• Take out the tea bags and put them in the refrigerator to cool.',
                ]),
                const SizedBox(height: 10),
                buildSectionWithTitle('How to use:', [
                  'Gently place the tea bags over both eyes. Let them rest for 10-15 minutes then remove the tea bags and rinse the area with water. Repeat regularly.',
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
                  child: const Text('• Johns Hopkins Medicine - How to Get Rid of Bags Under Your Eyes', style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
                InkWell(
                  onTap: () {
                    // Open the link when tapped
                    // You can implement URL opening logic here
                  },
                  child: const Text('• ResearchGate - Effective Home Remedies for Puffy Eyes', style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
