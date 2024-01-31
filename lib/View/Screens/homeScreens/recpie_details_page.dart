import 'package:flutter/material.dart';
import '../../../Model/conditions_model.dart';
import '../../Widgets/header_text.dart';


class RecipeDetailPage extends StatelessWidget {
  final Recipe? recipe;

  RecipeDetailPage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(recipe?.recipeName ?? 'Recipe Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderText(text: 'Ingredients'),
              const SizedBox(height: 10),
              ...recipe?.ingredients?.map(
                    (ingredient) => ListTile(
                  leading: const Icon(Icons.arrow_right),
                  title: bodyText(
                    text: ingredient,
                  ),
                ),
              ) ??
                  [],
              const SizedBox(height: 20),
              const HeaderText(text: 'How to Prepare'),
              const SizedBox(height: 10),
              ...recipe?.howToPrepare?.map(
                    (step) => ListTile(
                  leading: const Icon(Icons.arrow_right),
                  title: bodyText(
                    text: step,
                  ),
                ),
              ) ??
                  [],
              const SizedBox(height: 20),
              const HeaderText(text: 'How to Use'),
              const SizedBox(height: 10),
              ...recipe?.howToUse?.map(
                    (step) => ListTile(
                  leading: const Icon(Icons.arrow_right),
                  title: bodyText(
                    text: step,
                  ),
                ),
              ) ??
                  [],
            ],
          ),
        ),
      ),
    );
  }
}
