import 'package:camera/camera.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class ScanController extends GetxController {
  late CameraController cameraController;
  late List<CameraDescription> cameras;
  var cameraCount = 0;
  var label = '';
  int confidence = 0;

  var isCameraInitialized = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeCamera();
    initTFLiteModel();
  }

  Future<void> initializeCamera() async {
    PermissionStatus status = await Permission.camera.request();

    if (status == PermissionStatus.granted) {
      cameras = await availableCameras();
      cameraController = CameraController(cameras[0], ResolutionPreset.max);
      await cameraController.initialize().then((value) {
        cameraController.startImageStream((image) {
          cameraCount++;
          if (cameraCount % 10 == 0) {
            cameraCount = 0;
            runObjectDetection(image);
          }
          update();
        });
      });

      if (cameraController.value.isInitialized) {
        isCameraInitialized(true);
        update();
      } else {
        isCameraInitialized(false);
        cameraController.dispose();
      }
      update();
    } else {
      print('Camera permission denied');
    }
  }

  Future<void> initTFLiteModel() async {
    await Tflite.loadModel(
      model: 'assets/tenserflow/model_unquant.tflite',
      labels: 'assets/tenserflow/labels.txt',
      isAsset: true,
      numThreads: 1,
      useGpuDelegate: false,
    );
  }

  Future<void> runObjectDetection(CameraImage image) async {
    if (cameraController.value.isStreamingImages) {
      try {
        var detector = await Tflite.runModelOnFrame(
          bytesList: image.planes.map((plane) {
            return plane.bytes;
          }).toList(),
          asynch: true,
          imageHeight: image.height,
          imageWidth: image.width,
          imageMean: 127.5,
          imageStd: 127.5,
          numResults: 1,
          rotation: 90,
          threshold: 0.1,
        );
        print("======================== $detector");
        if (detector != null) {
          print("======================== $detector");
          if (detector.first['confidence'] * 100 >= 25) {
            label = detector.first['label'].toString().substring(2);
            confidence = ((detector.first['confidence'] as double) * 100).toInt();
          }
          else{
            print("======================== $detector");

            label = "Detecting....";
            confidence = 0;
          }
        }
      } catch (e) {
        print('Error capturing or processing camera image: $e');
      }
    }
  }

  @override
  void onClose() {
    cameraController.dispose();
    Tflite.close();
    super.onClose();
  }
}
