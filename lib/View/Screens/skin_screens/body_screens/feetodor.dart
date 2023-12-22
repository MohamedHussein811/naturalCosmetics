import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class FootOdor extends StatelessWidget {
  const FootOdor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foot Odor', style: TextStyle(color: Colors.white)),
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
                          'Foot Odor',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Smelly feet (bromodosis) is a very common medical problem, but the good news is that treating bromodosis is simple, quick, and affordable.',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Image.asset(
                          'assets/Skin/main(footodor).jpg',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text('It can occur due to:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Sweat accumulation and build up, which leads to bacterial growth on the skin which causes bad odors.'),
                        Text('• Athlete\'s foot and other fungal infections.'),
                        SizedBox(height: 10),
                        Text('Useful Tips:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text('• Wash your feet at least once a day (use an antibacterial soap if you can).'),
                        Text('• Remove hard skin with a foot file and keep toenails short and clean.'),
                        Text('• Wear breathable or natural fabrics on your feet, like cotton or leather.'),
                        Text('• Let shoes dry out before wearing them again.'),
                        Text('• Do not wear the same socks or shoes 2 days in a row nor wear tight shoes.'),
                        Text('• Do not walk around barefoot in public places that are wet, like swimming pools and showers in gyms.'),
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
                          'The Vinegar Recipe:',
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
                        ),
                        SizedBox(height: 10),
                        Text('Ingredients:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Water'),
                        Text('• 1/3 cup of vinegar (white vinegar or apple cider vinegar)'),
                        Text('• Lavender oil'),
                        Text('• Baking soda'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Image.asset('assets/Skin/17.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/18.jpg', height: 100),
                            ),
                            Expanded(
                              child: Image.asset('assets/Skin/19.jpg', height: 100),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text('How to prepare:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Fill a foot basin with warm or cold water.'),
                        Text('• Add 1/3 cup of white vinegar or apple cider vinegar.'),
                        SizedBox(height: 10),
                        Text('How to use:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('• Soak your feet in the foot bath for 15 minutes (can be repeated multiple times a day if needed) then rinse and dry your feet.'),
                        Text('• Rub a few drops of lavender oil on your feet, especially between your toes.'),
                        Text('• You can sprinkle some baking soda in your shoes to soak up the moisture and bad odor.'),
                        Text('(Caution: avoid soaking your feet in vinegar in case of having any open wounds or sores)', style: TextStyle(color:Colors.red),),
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
