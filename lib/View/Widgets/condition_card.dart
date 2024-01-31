import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;

import '../../Model/conditions_model.dart';
import '../Screens/homeScreens/condition_details_page.dart';

class ConditionCard extends StatelessWidget {
  final Condition? condition;

  const ConditionCard({Key? key, required this.condition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getx.Get.to(
          () => ConditionDetailPage(condition: condition),
          transition: getx.Transition.fadeIn,
          duration: const Duration(milliseconds: 150),
        );
      },
      child: Card(
        elevation: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Hero(
            tag: condition?.conditionImg ?? '',
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        condition?.conditionImg ?? '',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 4.0),
                    child: Container(
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        condition!.conditionName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
