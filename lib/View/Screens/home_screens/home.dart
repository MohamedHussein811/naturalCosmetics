import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/conditions_controller.dart';
import '../../Widgets/categories_card.dart';
import '../../Widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ConditionsController conditionsController = Get.find();
    conditionsController.fetchConditions();
    return Scaffold(
      body: Column(
        children: [
          const Header(title: "Nature Glow"),
          Expanded(
            child: Obx(() {
              if (conditionsController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else if (conditionsController.conditions.isEmpty) {
                return const Center(child: Text('No conditions found'));
              } else {
                var uniqueBodyParts = conditionsController.conditions
                    .map((condition) => condition.bodyPart)
                    .toSet()
                    .toList();
                var categories = conditionsController.conditions
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
                      conditions: conditionsController.conditions,
                    );
                  },
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
