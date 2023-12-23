import 'package:flutter/material.dart';
import 'customcard.dart';

Widget buildSectionWithTitle(String title, List<String> items) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 10),
      Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      const SizedBox(height: 10),
      for (var item in items)
        Text(item),
    ],
  );
}

Widget buildImageSection(String imagePath) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(
        child: Image.asset(imagePath, height: 100),
      ),
    ],
  );
}
Widget buildImageSectionRow(List<String> imagePaths) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: imagePaths.map((path) => Expanded(child: Image.asset(path, height: 100))).toList(),
  );
}

Widget buildContentCard(String title, List<Widget> content) {
  return CustomCard(
    title: title,
    content: content,
  );
}
