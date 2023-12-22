import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class WhiteHeads extends StatelessWidget {
  const WhiteHeads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('White Heads', style: TextStyle(color: Colors.white)),
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
                          'Whiteheads',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Whiteheads are little, elevated, white pimples on the skin due to the buildup of dead skin and oil in pores. They are one kind of acne that frequently appears on the back, chest, and face.',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Image.asset(
                          'assets/Skin/main(whiteheads).jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text('Useful Tips:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text('• Do not rub the face.'),
                        Text('• Clean the face thoroughly.'),
                        Text('• Stay hydrated.'),
                        Text('• Apply sunblock or sunscreen.'),
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
                          'The Potato Recipe:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        SizedBox(height: 10),
                        Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• 1 tablespoon of potato juice'),
                        Text('• 2 tablespoons of yogurt'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Skin/11.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/12.jpg', height: 100),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Peel the potato and blend it in a blender or grate it.'),
                        Text('• Extract its juice.'),
                        Text('• Add the juice in a bowl.'),
                        Text('• Add the honey in the bowl.'),
                        Text('• Mix well.'),
                        SizedBox(height: 10),
                        Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Wash the face well.'),
                        Text('• Apply the mask on the face.'),
                        Text('• Leave for 15 minutes.'),
                        Text('• Wash with warm water.'),
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
                          'The Yogurt Recipe:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        SizedBox(height: 10),
                        Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• 1 tablespoon of yogurt'),
                        Text('• 1 tablespoon of tomato paste'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Skin/13.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/14.jpg', height: 100),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Blend a tomato in a blender to form paste.'),
                        Text('• Add the paste to a bowl.'),
                        Text('• Add the yogurt to the bowl.'),
                        Text('• Mix well.'),
                        SizedBox(height: 10),
                        Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• On damp skin, apply the mask on the face.'),
                        Text('• Leave for 20 minutes.'),
                        Text('• Gently rub it off with cool water.'),
                        Text('• This mask can be used twice a week.'),

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
