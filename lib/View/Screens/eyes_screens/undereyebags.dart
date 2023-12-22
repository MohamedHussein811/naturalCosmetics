import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

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
            Card(
              elevation: 4,
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Under-eye Bags',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
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
                        const SizedBox(height: 10),
                        const Text('It can occur due to:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        const Text("•	They're more common as you get older as the muscles that support your eyelids as well as the tissues surrounding your eyes deteriorate."),
                        const Text('•	Fat that supports the eyes can move to the lower eyelids, giving the appearance of puffiness.'),
                        const SizedBox(height: 10),
                        const Text('Useful Tips:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        const Text('• Use a cool compress.'),
                        const Text('• Cut down on fluids before bedtime and limit salt in your diet to reduce fluid retention that can cause bags under the eyes.'),
                        const Text('• Don\'t smoke.'),
                        const Text('• Get enough sleep.'),
                        const Text('• Sleep with your head slightly raised to prevent fluid accumulation around your eyes as you sleep.'),
                        const Text('• Reduce allergy symptoms as congestion and inflammation can exacerbate under-eye bags.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 4,
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'The Cucumber Recipe:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• 1 Cucumber'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Eyes/2.jpg', height: 100),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('Wash a fresh cold cucumber well then cut it into thin slices.'),
                        const SizedBox(height: 10),
                        const Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('Gently put two cucumber slices on both eyes and leave them on until they warm up, then turn them over and leave them on until they warm up. Remove the slices and wash your face.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 4,
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'The Black or Green Tea Recipe:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• 2 cold black tea or green tea bags'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Eyes/3.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Eyes/4.jpg', height: 100),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• Add boiling water to the tea bags in a cup.'),
                        const Text('• Brew the tea bags for 5 – 10 minutes.'),
                        const Text('• Take out the tea bags and put them in the refrigerator to cool.'),
                        const SizedBox(height: 10),
                        const Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('Gently place the tea bags over both eyes. Let them rest for 10-15 minutes then remove the tea bags and rinse the area with water. Repeat regularly.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 4,
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Read more:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
