// home_page.dart

import 'package:flutter/material.dart';
import '../../../API/api_helper.dart';
import '../../../Model/conditions_model.dart';
import '../../Widgets/categories_card.dart';
import '../../Widgets/header.dart';


class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Condition>> conditionsFuture;

  @override
  void initState() {
    super.initState();
    conditionsFuture = ApiService().fetchConditions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(title: "Nature Glow"),

          Expanded(
            child: FutureBuilder<List<Condition>>(
              future: conditionsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No conditions found'));
                } else {
                  // Extracting unique body parts
                  var uniqueBodyParts = snapshot.data!
                      .map((condition) => condition.bodyPart)
                      .toSet()
                      .toList();
                  var categories = snapshot.data!
                      .map((condition) => condition.categoryImg)
                      .toSet()
                      .toList();
            
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                    ),
                    itemCount: uniqueBodyParts.length,
                    itemBuilder: (context, index) {
                      final bodyPart = uniqueBodyParts[index];
                      final categoryImg = categories[index];
                      return BodyPartCard(
                        bodyPart: bodyPart!,
                        categoryImg: categoryImg,
                        conditions: snapshot.data!,
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
