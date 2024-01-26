import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/scan_controller.dart';

class CameraView extends StatelessWidget {
  const CameraView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ScanController>(
        init: ScanController(),
        builder: (controller) {
          return controller.isCameraInitialized.value
              ? Stack(
                  children: [
                    Center(child: CameraPreview(controller.cameraController)),
                    Center(
                      child: Container(
                        width: controller
                            .cameraController.value.previewSize?.width,
                        height: controller
                                .cameraController.value.previewSize!.height -
                            80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.teal, width: 4),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              color: Colors.teal,
                              child: Text(
                                  "The Disease is ==>${controller.label}\n"
                                  "The Acc is ==>${controller.confidence}%"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
