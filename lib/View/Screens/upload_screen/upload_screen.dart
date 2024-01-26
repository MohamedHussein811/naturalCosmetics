import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../../controller/api_controller.dart';

class UploadPage extends StatelessWidget {
  final ApiController apiController = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Image',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [primaryColor, Colors.tealAccent])),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => apiController.pickImage(),
              child: const Text('Pick Image'),
            ),
            Obx(() {
              if (apiController.isLoading.value) {
                return const CircularProgressIndicator();
              } else if (apiController.selectedImage.value != null) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Disease Analysis', // Title
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ...apiController.diseaseData
                            .map((disease, probability) => MapEntry(
                                  disease,
                                  Text(
                                    "• $disease: ${(probability * 100).toStringAsFixed(2)}%",
                                    style: const TextStyle(fontSize: 16.0),
                                  ),
                                ))
                            .values
                            .toList(),
                        const Text(
                          'Body Part', // Title
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "• ${apiController.bodyPartData}", // Bullet points
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const Text('No image selected');
              }
            })
          ],
        ),
      ),
    );
  }
}
