import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:natural_cosmetics/Model/constants.dart';
import '../../../API/api_helper.dart';
import '../../../controller/api_controller.dart';
import '../../../controller/treatment_controller.dart';

class TreatmentPage extends StatelessWidget {
  final ApiController apiController = Get.find();
  final TreatmentController treatmentController = Get.put(TreatmentController());
  ApiService apiService = ApiService();
  final String diseaseName;

  TreatmentPage(this.diseaseName, {super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding = size.width * 0.05;
    double cardPadding = size.width * 0.04;
    double fontSizeTitle = size.height * 0.025;
    double fontSizeBody = size.height * 0.02;
    double buttonFontSize = size.height * 0.02; // Responsive font size for button text

    return WillPopScope(
      onWillPop: () async {
        // Reset the controller when navigating back
        treatmentController.onClose();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Treatment'.tr,
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [primaryColor, Colors.teal.shade300]),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Details and treatment for $diseaseName using natural remedies will be shown here.',
                    style: TextStyle(fontSize: buttonFontSize, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Obx(() {
                if (treatmentController.isLoading.value) {
                  return Column(
                    children: [
                      const CircularProgressIndicator(color: primaryColor,),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        'Response is being generated...',
                        style: TextStyle(fontSize: buttonFontSize),
                      ),
                    ],
                  );
                } else if (treatmentController.errorMessage.isNotEmpty) {
                  return Text(
                    treatmentController.errorMessage.value,
                    style: TextStyle(fontSize: buttonFontSize, color: Colors.red),
                  );
                } else if (treatmentController.responseMessage.isNotEmpty) {
                  return buildFormattedText(context, treatmentController.responseMessage.value, buttonFontSize);
                } else {
                  return Container();
                }
              }),
              SizedBox(height: size.height * 0.02),
              Obx(() {
                return treatmentController.isButtonVisible.value
                    ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.014,
                      horizontal: size.width * 0.1,
                    ),
                  ),
                  onPressed: () async {
                    try {
                      // Construct the prompt with the disease name
                      String prompt = "provide me 2 treatments for $diseaseName using natural remedies but provide summed up response";

                      // Set loading to true
                      treatmentController.setLoading(true);

                      // Reset previous messages
                      treatmentController.setResponseMessage('');
                      treatmentController.setErrorMessage('');

                      String responseMessage = await apiService.sendMessage(prompt);

                      // Set the response message
                      treatmentController.setResponseMessage(responseMessage);

                      // Hide the button after response is received
                      treatmentController.setButtonVisible(false);
                    } catch (e) {
                      // Set the error message
                      treatmentController.setErrorMessage('Error sending message: $e');
                    } finally {
                      // Set loading to false
                      treatmentController.setLoading(false);
                    }
                  },
                  child: Text(
                    'View Treatment'.tr,
                    style: TextStyle(
                      fontSize: buttonFontSize, // Use responsive font size
                    ),
                  ),
                )
                    : Container();
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFormattedText(BuildContext context, String response, double fontSize) {
    List<TextSpan> spans = [];
    bool isBold = false;
    bool isHeading = false;

    // Determine the text color based on the current theme
    Color textColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    response.splitMapJoin(
      RegExp(r'(\*\*|###)'),
      onMatch: (match) {
        String matchStr = match.group(0)!;
        if (matchStr == '**') {
          isBold = !isBold;
        } else if (matchStr == '###') {
          isHeading = !isHeading;
        }
        return '';
      },
      onNonMatch: (nonMatch) {
        spans.add(
          TextSpan(
            text: nonMatch,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: isHeading ? fontSize * 1.2 : fontSize,
              color: textColor, // Set the text color based on the theme
            ),
          ),
        );
        return '';
      },
    );

    return RichText(
      text: TextSpan(
        children: spans,
      ),
    );
  }
}
