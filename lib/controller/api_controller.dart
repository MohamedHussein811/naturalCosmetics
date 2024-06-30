import 'dart:io';
import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:image_picker/image_picker.dart';
import '../API/api_helper.dart';
import '../Model/api_key_model.dart';
import '../Model/skin_detection_api_model.dart';

class ApiController extends getx.GetxController {
  var selectedImage = Rxn<File>();
  var isLoading = false.obs;
  var bodyPartData = ''.obs;
  var resultData = ''.obs;
  var diseaseData = <String, double>{}.obs;
  var apiKey = ''.obs;
  late final ApiService _apiService;
  final Dio _dio = Dio();
  final picker = ImagePicker();

  ApiController(this._apiService);

  Future<void> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
      uploadImage();
    }
  }

  Future<void> uploadImage() async {
    if (selectedImage.value == null) return;

    isLoading.value = true;

    try {
      final ApiKeyResponse fetchedApiKeyResponse = await _apiService.fetchKey();
      final String fetchedApiKey = fetchedApiKeyResponse.key;
      apiKey.value = fetchedApiKey;

      ApiResponse apiResponse = await _apiService.uploadImageAndGetResults(selectedImage.value!, fetchedApiKey);

      diseaseData.value = Map<String, double>.from(apiResponse.data.resultsEnglish);
      bodyPartData.value = apiResponse.data.bodyPart;
      resultData.value = apiResponse.data.bodyPart;
    } on DioException catch (e) {
      resultData.value = 'Error: ${e.message}';
    } catch (e) {
      resultData.value = 'Error: $e';
    } finally {
      isLoading.value = false;
    }
  }
}
