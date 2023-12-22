import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class BlackHeads extends StatelessWidget {
  const BlackHeads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Black Heads', style: TextStyle(color: Colors.white)),
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
                        Text(
                          'Blackheads',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Blackheads are the most common type of acne. It develops due to a combination of sebum and dead skin cells on the skin, which clogs the skin’s pores.',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Image.asset(
                          'assets/Skin/main(blackheads).jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text('Useful Tips:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text('• Wash the face when waking up, before bed, and after sweating.'),
                        Text('• Remove makeup completely.'),
                        Text('• Change pillowcase more often.'),
                        Text('• Use alcohol-free skin products.'),
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
                        Text(
                          'The Egg White Recipe:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        SizedBox(height: 10),
                        Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• One egg white'),
                        Text('• 1 tablespoon of honey'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Skin/5.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/6.jpg', height: 100),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Crack an egg then separate the egg white from the yolk.'),
                        Text('• Add the egg white to a bowl.'),
                        Text('• Add the honey in the same bowl.'),
                        Text('• Mix well.'),
                        SizedBox(height: 10),
                        Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Wash face first then dry it.'),
                        Text('• Apply the mask on the affected area.'),
                        Text('• Place a tissue paper on the area of the mask.'),
                        Text('• Leave for 20 minutes.'),
                        Text('• Gently pull the tissue.'),
                        Text('• Rinse with warm water.'),
                        Text('• Can be applied every alternate day for best results.'),
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
                        Text(
                          'The Tea Tree Oil Recipe:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        SizedBox(height: 10),
                        Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• 2 drops of tea tree oil'),
                        Text('• 1 tablespoon of carrier oil (Olive oil or coconut oil)'),
                        Text('• 1 tablespoon of very fine sugar'),
                        Text('• 1 tablespoon of honey'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Skin/7.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/8.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/9.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/10.jpg', height: 100),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• In a bowl, add the tea tree oil with the carrier oil and mix both well.'),
                        Text('• Add the honey and the sugar to the bowl.'),
                        Text('• Mix well.'),
                        SizedBox(height: 10),
                        Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Steam the face for 10 minutes by boiling water in a bowl then bending over it with a towel covering the head.'),
                        Text('• Apply the mixture to the nose.'),
                        Text('• Massage gently in a circular motion for 5 minutes.'),
                        Text('• Rinse off with cool water.'),
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
