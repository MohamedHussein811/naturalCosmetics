import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:image_picker/image_picker.dart';

import '../API/api_helper.dart';
import '../Model/api_key_model.dart';
import '../Model/skin_detection_api_model.dart';

class ApiController extends GetxController {
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
      final String fetchedApiKey = fetchedApiKeyResponse.key; // Extract the key
      apiKey.value = fetchedApiKey; // Assign only the key to apiKey

      _dio.options.headers['ailabapi-api-key'] = fetchedApiKey;

      var formData = dio.FormData.fromMap({
        'image': await dio.MultipartFile.fromFile(selectedImage.value!.path),
      });

      final response = await _dio.post(_apiService.url, data: formData);

      if (response.statusCode == 200) {
        ApiResponse apiResponse = ApiResponse.fromJson(response.data);

        diseaseData.value = Map<String, double>.from(apiResponse.data.resultsEnglish);
        bodyPartData.value = apiResponse.data.bodyPart;
        resultData.value = apiResponse.data.bodyPart;
      } else {
        resultData.value = 'Failed to load data';
      }
    } on DioException catch (e) {
      resultData.value = 'Error: ${e.message}';
    } finally {
      isLoading.value = false;
    }
  }
}
