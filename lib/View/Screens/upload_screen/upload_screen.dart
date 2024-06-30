import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import 'package:natural_cosmetics/View/Screens/upload_screen/treatment_screen.dart';
import '../../../controller/api_controller.dart';

class UploadPage extends StatelessWidget {
  final ApiController apiController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding = size.width * 0.05;
    double cardPadding = size.width * 0.04;
    double fontSizeTitle = size.height * 0.025;
    double fontSizeBody = size.height * 0.02;
    double buttonFontSize = size.height * 0.02; // Responsive font size for button text

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upload Image'.tr,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [primaryColor, Colors.teal.shade300]),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.014, horizontal: size.width * 0.1),
                ),
                onPressed: () => apiController.pickImage(),
                child: Text(
                  'Pick Image'.tr,
                  style: TextStyle(
                    fontSize: buttonFontSize, // Use responsive font size
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Obx(() {
                if (apiController.isLoading.value) {
                  return const CircularProgressIndicator(color: Colors.teal);
                } else if (apiController.selectedImage.value != null) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.file(
                          apiController.selectedImage.value!,
                          height: size.height * 0.18,
                          width: size.width * 0.45,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(cardPadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Disease Analysis',
                                style: TextStyle(
                                  fontSize: fontSizeTitle,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              ...apiController.diseaseData
                                  .map((disease, probability) => MapEntry(
                                disease,
                                Text(
                                  "• $disease: ${(probability * 100).toStringAsFixed(2)}%",
                                  style: TextStyle(fontSize: fontSizeBody),
                                ),
                              ))
                                  .values,
                              SizedBox(height: size.height * 0.02),
                              Text(
                                'Body Part',
                                style: TextStyle(
                                  fontSize: fontSizeTitle,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                "• ${apiController.bodyPartData}",
                                style: TextStyle(fontSize: fontSizeBody),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: size.height * 0.014, horizontal: size.width * 0.1),
                        ),
                        onPressed: () {
                          // Find the disease with the highest probability
                          String highestProbabilityDisease = '';
                          double highestProbability = 0.0;

                          apiController.diseaseData.forEach((disease, probability) {
                            if (probability > highestProbability) {
                              highestProbability = probability;
                              highestProbabilityDisease = disease;
                            }
                          });

                          Get.to(
                            TreatmentPage(highestProbabilityDisease),
                            transition: Transition.rightToLeft,
                          );
                        },
                        child: Text(
                          'View Treatment'.tr,
                          style: TextStyle(
                            fontSize: buttonFontSize, // Use responsive font size
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(cardPadding),
                      child: Text(
                        'Please select a photo to detect the possible skin diseases'.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: fontSizeBody),
                      ),
                    ),
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
