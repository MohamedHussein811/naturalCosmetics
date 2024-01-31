import 'package:natural_cosmetics/View/Screens/home_screens/recpie_details_page.dart';

import '../../../Model/conditions_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;

import '../../Widgets/header_text.dart';

class ConditionDetailPage extends StatelessWidget {
  final Condition? condition;

  ConditionDetailPage({Key? key, required this.condition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(condition!.conditionName),
              background: Hero(
                tag: condition?.conditionImg ?? '',
                child: Image.network(
                  condition?.conditionImg ?? '',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  HeaderText(
                    text: condition!.conditionName,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  bodyText(
                    text: condition!.description!,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  const HeaderText(
                    text: 'Useful Tips',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ...?condition?.usefulTips?.map(
                        (tip) => ListTile(
                      leading: const Icon(Icons.health_and_safety_outlined),
                      title: Text(tip),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const HeaderText(
                    text: "Recipes",
                  ),
                  ...?condition?.recipes?.map(
                        (recipe) => ListTile(
                      title: Text(recipe.recipeName),
                      subtitle: recipe.ingredients != null
                          ? Text(recipe.ingredients!.join(", "))
                          : null,
                      onTap: () {
                        getx.Get.to(() => RecipeDetailPage(recipe: recipe));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
