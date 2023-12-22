import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: primaryColor,
        child: SafeArea(
          child: Container(
            color:Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: DefaultPadding * 2.5),
                    height: size.height * 0.2,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: size.height * 0.2 - 27,
                          padding: const EdgeInsets.only(
                            left: DefaultPadding,
                            right: DefaultPadding,
                            bottom: 36 + DefaultPadding,
                          ),
                          decoration: const BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                              bottomRight: Radius.circular(36),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'PureGlow',
                                style: Theme.of(context).textTheme.headline5?.copyWith(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            alignment: Alignment.center,
                            margin:
                            const EdgeInsets.symmetric(horizontal: DefaultPadding),
                            padding:
                            const EdgeInsets.symmetric(horizontal: DefaultPadding),
                            height: 54,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 10),
                                  blurRadius: 50,
                                  color: primaryColor.withOpacity(0.23),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search...',
                                    ),
                                    onChanged: (String searchText) {
                                    },
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/search.png"),
                                ),
                              ],
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.0,
                      ),
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        String category = categories[index];

                        return GestureDetector(
                          onTap: () {
                            switch (category) {
                              case 'Skin':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SkinPage()),
                                );
                                break;
                              case 'Hair':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HairPage()),
                                );
                                break;
                              case 'Nail':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => NailPage()),
                                );
                                break;
                              case 'Teeth':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => TeethPage()),
                                );
                                break;
                              case 'Lips':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LipsPage()),
                                );
                                break;
                              case 'Eyes':
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => EyesPage()),
                                );
                                break;
                              default:
                            }
                          },
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage('assets/$category.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black.withOpacity(0.4),
                                ),
                              ),
                              Center(
                                child: Text(
                                  category,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> categories = ['Skin', 'Hair', 'Nail', 'Teeth', 'Lips', 'Eyes'];

class SkinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skin Page'),
      ),
      body: Center(
        child: Text('Skin Page Content'),
      ),
    );
  }
}

class HairPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hair Page'),
      ),
      body: Center(
        child: Text('Hair Page Content'),
      ),
    );
  }
}

class NailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nail Page'),
      ),
      body: Center(
        child: Text('Nail Page Content'),
      ),
    );
  }
}

class TeethPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teeth Page'),
      ),
      body: Center(
        child: Text('Teeth Page Content'),
      ),
    );
  }
}

class LipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lips Page'),
      ),
      body: Center(
        child: Text('Lips Page Content'),
      ),
    );
  }
}

class EyesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eyes Page'),
      ),
      body: Center(
        child: Text('Eyes Page Content'),
      ),
    );
  }
}
