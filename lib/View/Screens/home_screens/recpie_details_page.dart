import 'package:flutter/material.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../../Model/conditions_model.dart';
import '../../Widgets/header_text.dart';
import 'package:url_launcher/url_launcher.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe? recipe;

  const RecipeDetailPage({super.key, required this.recipe});

  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString.trim());
    try {
      final launchResult = await launchUrl(url, mode: LaunchMode.externalApplication);
      print('Launch result: $launchResult');
    } catch (e) {
      print('Could not launch $urlString: $e');
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
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
                      title: Text(
                        ingredient,
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
                      title: Text(
                        step,
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
                      title: Text(
                        step,
                      ),
                    ),
                  ) ??
                  [],
              const SizedBox(height: 20),
              const HeaderText(text: 'Images'),
              const SizedBox(height: 10),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                children: List.generate(
                  recipe?.images?.length ?? 0,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        child: Image.network(
                          recipe!.images![index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const HeaderText(text: 'Medical Resources'),
              const SizedBox(height: 10),
              ...recipe?.links?.map(
                    (link) => ListTile(
                      leading: const Icon(Icons.link),
                      title: Text(
                        link.linkText,
                        style: const TextStyle(color: Colors.blue),
                      ),
                      onTap: () {
                        _launchURL(link.url);
                      },
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
