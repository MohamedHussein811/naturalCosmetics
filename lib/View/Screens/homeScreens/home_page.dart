import 'package:flutter/material.dart';
import '../../../API/api_helper.dart';
import '../../../Model/conditions_model.dart';
import '../../Widgets/categories_card.dart';


class ConditionsScreen extends StatefulWidget {
  const ConditionsScreen({super.key});

  @override
  _ConditionsScreenState createState() => _ConditionsScreenState();
}

class _ConditionsScreenState extends State<ConditionsScreen> {
  late Future<List<Condition>> conditionsFuture;

  @override
  void initState() {
    super.initState();
    conditionsFuture = ApiService().fetchConditions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Body Part'),
      ),
      body: FutureBuilder<List<Condition>>(
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
    );
  }
}
