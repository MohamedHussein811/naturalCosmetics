import 'package:cached_network_image/cached_network_image.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import 'package:natural_cosmetics/View/Screens/home_screens/recpie_details_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Model/conditions_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;

import '../../Widgets/header_text.dart';

class ConditionDetailPage extends StatelessWidget {
  final Condition? condition;
  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString.trim());
    try {
      final launchResult = await launchUrl(url, mode: LaunchMode.externalApplication);
      print('Launch result: $launchResult');
    } catch (e) {
      print('Could not launch $urlString: $e');
    }
  }

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
            backgroundColor: primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(condition!.conditionName,style: TextStyle(color: Colors.white),),
              background: Hero(
                tag: condition?.conditionImg ?? '',
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: condition?.conditionImg ?? '',
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
                  HeaderText(
                    text: "Medical resources".tr,
                  ),
                  ListTile(
                    leading: const Icon(Icons.link),
                    title: Text(
                      'Medical resource'.tr,
                      style: const TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      _launchURL(condition!.conditionLink!);
                    },
                  ),
                  const Divider(thickness: 0.9,),
                  const SizedBox(
                    height: 10,
                  ),
                  HeaderText(
                    text: 'Useful tips'.tr,
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
                  HeaderText(
                    text: "recipes".tr,
                  ),
                  ...?condition?.recipes?.map(
                    (recipe) => ListTile(
                      isThreeLine: true,
                      splashColor: Colors.teal.shade900,
                      focusColor: Colors.teal.shade900,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tileColor: Theme.of(context).primaryColor,
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
