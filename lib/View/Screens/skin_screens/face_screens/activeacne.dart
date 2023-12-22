import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class ActiveAcne extends StatelessWidget {
  const ActiveAcne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Active Acne', style: TextStyle(color: Colors.white)),
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
                          'Active Acne',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Acne is an inflammatory condition resulting from the accumulation of oil and dead skin cells in the hair follicles, causing bacteria to grow in the pores. It can occur due to hormonal fluctuations, stress, unhealthy diet, and air pollution.',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Image.asset(
                          'assets/Skin/main(activeacne).jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 10),
                        const Text('Useful Tips:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        const Text('• Avoid touching the face regularly.'),
                        const Text('• Stay hydrated.'),
                        const Text('• Use sunscreen or sunblock.'),
                        const Text('• Keep the face clean from sweat and dirt.'),
                        const Text('• Remove makeup completely.'),
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
                          'The Green Tea Recipe:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• 1 green teabag'),
                        const Text('• 1 tablespoon of honey'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Skin/1.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/2.jpg', height: 100),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• Brew the green teabag in boiling water.'),
                        const Text('• Remove the teabag and let it cool.'),
                        const Text('• Add the honey to a bowl.'),
                        const Text('• Open teabag and empty it in the bowl.'),
                        const Text('• Mix well.'),
                        const SizedBox(height: 10),
                        const Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• Wash face well and dry it.'),
                        const Text('• Apply the paste on the face using clean fingertips.'),
                        const Text('• Leave the mask for 15 minutes.'),
                        const Text('• Rinse with warm water and pat the face dry.'),
                        const Text('• Can be used once a week.'),
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
                          child: const Text('• Wiley Online Library - Green Tea for Acne', style: TextStyle(color: Colors.blue, fontSize: 18)),
                        ),
                        InkWell(
                          onTap: () {
                            // Open the link when tapped
                            // You can implement URL opening logic here
                          },
                          child: const Text('• Healthline - Green Tea Face Mask', style: TextStyle(color: Colors.blue, fontSize: 18)),
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
                        const Text(
                          'The Honey Recipe:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• 1 teaspoon of honey'),
                        const Text('• 1 tablespoon of plain yogurt'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Skin/3.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/4.jpg', height: 100),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text('How to Prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• In a bowl, add the honey.'),
                        const Text('• Add the yogurt.'),
                        const Text('• Stir ingredients well with a fork.'),
                        const SizedBox(height: 10),
                        const Text('How to Use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• Tie the hair first to avoid stickiness.'),
                        const Text('• Dampen the face with warm water.'),
                        const Text('• Apply the mask on the face.'),
                        const Text('• Leave for 15 minutes.'),
                        const Text('• Rinse with warm water first, then with cool water.'),
                        const Text('• Pat the skin with a clean dry towel.'),
                        const Text('• This mask can be applied twice a week.'),
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
                          'Read more:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        InkWell(
                          onTap: () {
                            // Open the link when tapped
                            // You can implement URL opening logic here
                          },
                          child: Text('• WikiHow - Yogurt Face Mask', style: TextStyle(color: Colors.blue, fontSize: 18)),
                        ),
                        InkWell(
                          onTap: () {
                            // Open the link when tapped
                            // You can implement URL opening logic here
                          },
                          child: Text('• Liebertpub - Honey and Yogurt Mask Study', style: TextStyle(color: Colors.blue, fontSize: 18)),
                        ),
                        InkWell(
                          onTap: () {
                            // Open the link when tapped
                            // You can implement URL opening logic here
                          },
                          child: Text('• Wageningen Academic - Yogurt Face Mask Study', style: TextStyle(color: Colors.blue, fontSize: 18)),
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
