import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class Dandruff extends StatelessWidget {
  const Dandruff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dandruff', style: TextStyle(color:Colors.white),),
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
                          'Dandruff',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
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
                        const Text('• Dry scalp.'),
                        const Text('• Oily hair.'),
                        const Text('• Excessive washing of hair.'),
                        const Text('• Hormonal fluctuations and stress.'),
                        const SizedBox(height: 10),
                        const Text('Tips to prevent the progression of dandruff:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        const Text('• Avoid washing your hair with hot water as it leads to dryness of the scalp.'),
                        const Text('• Avoid stress and anxiety.'),
                        const Text('- Use antifungal shampoo 3 times per week.'),
                        const Text('• Eat food rich in omega-3 fatty acids and anti-inflammatory food such as green tea.'),
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
                          'The Lemon and Ginger Recipe',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• 1 tablespoon Lemon juice.'),
                        const Text('• 1 tablespoon Olive oil.'),
                        const Text('• 1 tablespoon Ginger juice.'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Hair/1.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Hair/2.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Hair/3.jpg', height: 100),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• A mixture of fresh lemon juice, olive oil, and fresh ginger juice is prepared.'),
                        const SizedBox(height: 10),
                        const Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text('• The mixture is applied to the scalp.'),
                        const Text('• Massage the scalp gently for a few minutes.'),
                        const Text('• Leave this mixture on the scalp for an hour.'),
                        const Text('• Wash hair with warm water.'),
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
