import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class BrittleNails extends StatelessWidget {
  const BrittleNails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brittle Nails', style: TextStyle(color:Colors.white),),
        backgroundColor: primaryColor, // Modern color
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
                          'Brittle Nails',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Almost everyone can have brittle nails. It is a frequent problem that results in split, thin, or weak nails. It may arise from an underlying condition like anemia or thyroid problems or from problems with moisture.',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          'assets/Nails/main.jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        const Text('Useful Tips:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        const Text('•	Limit using nail polish.'),
                        const Text('• Moisturize the cuticles.'),
                        const Text('• Eat fruits and vegetables.'),
                        const Text('•	Stay Hydrated.'),
                        const Text("•	Don't bite the nails."),
                        const Text('•	Keep the nails clean.'),
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
                          'The Olive Oil Recipe',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• 1 tablespoon aloe vera gel'),
                        const Text('• 2 tablespoons olive oil '),
                        const Text('• 1 garlic clove'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Nails/1.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Nails/2.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Nails/3.jpg', height: 100),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• Mix aloe vera gel and the olive oil in a clean bowl very well to form a serum.'),
                        const Text('• Chop the garlic clove in a chopping machine to form a paste.'),

                        const SizedBox(height: 10),
                        const Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• Rub the garlic paste to the nails, massage it in gentle circular motions and leave it for 10 minutes.'),
                        const Text('• Wash off and dry the nails.'),
                        const Text('•	Now Apply the Serum onto the nails and massage it.'),
                        const Text('• Leave it for 2 hours or overnight for better results.'),
                        const Text('• Apply the Serum every night before bed and apply the garlic paste twice a week. '),

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
