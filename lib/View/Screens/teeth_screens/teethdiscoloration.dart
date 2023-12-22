import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

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
                          'Teeth Discoloration',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Changes in teeth color, such as yellowing, dullness, or the development of white or dark flecks. Causes include tobacco use, dental trauma, poor oral hygiene, and certain foods, drinks, and medications.',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Image.asset(
                          'assets/Teeth/main.jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        const Text('Useful Tips:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        const Text('• Avoid smoking.'),
                        const Text('• Brush the teeth regularly.'),
                        const Text('• Limit coffee and tea intake.'),
                        const Text('• Never underestimate the power of teeth flossing.'),
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
                          'The Strawberries Recipe',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• 2 strawberries'),
                        const Text('• 1 teaspoon lemon juice'),
                        const Text('• 1 teaspoon water'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Teeth/1.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Teeth/2.jpg', height: 100),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('Mash the strawberries to get the strawberries pulp.'),
                        const Text('Add the strawberries pulp, lemon juice, and water in a clean bowl.'),
                        const Text('Mix them very well to get a paste.'),
                        const SizedBox(height: 10),
                        const Text('How to Use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• Put a little bit of the paste on a toothbrush.'),
                        const Text('• Apply it on the teeth for 3 minutes.'),
                        const Text('• Rinse it with water after the time is up.'),
                        const Text('• Brush the teeth with regular toothpaste.'),
                        const Text('• Repeat it once a week.'),

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
                          'The Banana peel Recipe',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• 1 banana peel'),
                        const Text('• 1 teaspoon lemon juice'),
                        const Text('• 1 teaspoon toothpaste'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Teeth/3.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Teeth/4.jpg', height: 100),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('Rub the banana peel with a spoon and get the inner content of it then add it in a clean bowl.'),
                        const Text('Add the lemon juice and toothpaste to the bowl.'),
                        const Text('Mix all the ingredients very well to form a homogenous mixture.'),
                        const SizedBox(height: 10),
                        const Text('How to Use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('•	Put a little bit of this mixture to a toothbrush. '),
                        const Text('•	Brush the teeth for 1 or 2 minutes. '),
                        const Text('•	Repeat 3-4 times a week for better results.'),
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
