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

      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: DefaultPadding * 2.5),
              // It will cover 20% of our total height
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
                      children: [
                        Text(
                          'Hi! Uishopy',
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
                                  color: primaryColor.withOpacity(0.23))
                            ]),
                        child: Row(
                          children: [

                            // Add a text input field for search
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search...',
                                ),
                                onChanged: (String searchText) {
                                  // Handle search text changes
                                  // You can use this searchText to filter your data or perform search operations
                                },
                              ),
                            ),
                            // Your existing image
                            Image.asset("assets/search.png"),
                          ],
                        ),
      
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}