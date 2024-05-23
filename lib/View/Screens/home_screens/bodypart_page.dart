import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';

import '../../../Model/conditions_model.dart';
import '../../Widgets/condition_card.dart';

class BodyPartConditionsScreen extends StatelessWidget {
  final String bodyPart;
  final List<Condition>? conditions;

  const BodyPartConditionsScreen({
    super.key,
    required this.bodyPart,
    required this.conditions,
  });

  @override
  Widget build(BuildContext context) {
    List<Condition>? filteredConditions = conditions
        ?.where((condition) => condition.bodyPart == bodyPart)
        .toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Conditions for $bodyPart'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
        ),
        itemCount: filteredConditions?.length,
        itemBuilder: (context, index) {
          final condition = filteredConditions?[index];
          return ConditionCard(condition: condition);
        },
      ),
    );
  }
}
