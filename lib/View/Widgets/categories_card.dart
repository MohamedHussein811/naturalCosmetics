import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;

import '../../Model/conditions_model.dart';
import '../Screens/homeScreens/bodypart_page.dart';
class BodyPartCard extends StatelessWidget {
  final String bodyPart;
  final String? categoryImg;
  final List<Condition> conditions;

  const BodyPartCard({super.key,
    required this.bodyPart,
    required this.categoryImg,
    required this.conditions,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getx.Get.to(() => BodyPartConditionsScreen(
          bodyPart: bodyPart,
          conditions: conditions,
        ));
      },
      child: Card(
        elevation: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      categoryImg ?? '',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 4.0),
                  child: Container(
                    color: Colors.black.withOpacity(
                        0.25), // Adjust opacity as needed
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    bodyPart,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
