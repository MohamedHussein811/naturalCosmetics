import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class Eczema extends StatelessWidget {
  const Eczema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eczema', style: TextStyle(color: Colors.white)),
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
                          'Eczema',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'There are seven types of eczema, but the most common type is atopic dermatitis. "Atopic dermatitis" or "atopic eczema”. It is a chronic non-contagious condition that occasionally flares up. Researchers are aware that a combination of environmental stimuli and genetics leads to the development of eczema, even though the exact cause of the condition is unknown. A lot of eczema sufferers also report having food allergies, allergic asthma, and hay fever.',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Image.asset(
                          'assets/Skin/main(eczema).jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text('It can occur due to:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• An overactive immune system that makes the skin barrier dry, itchy, and irritating.'),
                        SizedBox(height: 10),
                        Text('Useful Tips:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text('• Moisturize your skin regularly or when your skin becomes dry.'),
                        Text('• Take baths or showers with warm, not hot, water.'),
                        Text('• Stay hydrated and drink at least eight glasses of water each day.'),
                        Text('• Wear loose clothes made of cotton and other natural materials. Wash new clothing before wearing it and avoid wool or synthetic fibers.'),
                        Text('• Manage your stress and emotional triggers.'),
                        Text('• Avoid allergens and irritants.'),
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
                          'The Colloidal Oatmeal Bath Recipe:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        SizedBox(height: 10),
                        Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Water'),
                        Text('• 1-2 cups of oats'),
                        Text('• Coconut oil'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Skin/15.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/16.jpg', height: 100),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Grind 1 cup of oats in a blender to a really fine powder.'),
                        Text('• Fill the bathtub with warm water (avoid hot water as it can aggravate the inflamed skin).'),
                        Text('• Mix the finely grinded oats with the warm water (1 cup of oats or more depending on the size of your bathtub) using your hand until the water is milky and feels silky.'),
                        SizedBox(height: 10),
                        Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Soak your body in the oatmeal bath for 10-15 minutes to relieve eczema itchiness and moisturize your skin then wash your body with lukewarm water and dry it.'),
                        Text('• Apply coconut oil to areas of eczema to moisturize the skin and retain moisture.'),

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
