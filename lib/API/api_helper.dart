import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

import '../Model/api_key_model.dart';
import '../Model/conditions_model.dart';
import '../Model/skin_detection_api_model.dart';

class ApiService {

  final Dio _dio = Dio();
  final String baseUrl =
      'https://raw.githubusercontent.com/KIRRAA0/natural_cosmetics_data/main/diseases_data.json';
  final String englishUrl =
      'https://raw.githubusercontent.com/KIRRAA0/natural_cosmetics_data/main/diseases_data.json';
  final String arabicUrl =
      'https://raw.githubusercontent.com/KIRRAA0/natural_cosmetics_data/main/other.json';
  final String url =
      'https://www.ailabapi.com/api/portrait/analysis/skin-disease-detection';
  final String apiKeyUrl =
      'https://raw.githubusercontent.com/KIRRAA0/AIlabTools_API_KEY/main/api_key.json?token=GHSAT0AAAAAACRBKUF2GIWNSPDJZ6JUVNV2ZRVDCXA';
  final String treatmentApiUrl =
      "https://natural-cosmetics-api.vercel.app/api/v1/chat/new";

  Future<List<Condition>> fetchConditions(String langCode) async {
    String url = langCode == 'ar' ? arabicUrl : englishUrl;
    try {
      final response = await _dio.get(url);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        return (data as List).map((json) => Condition.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load conditions');
      }
    } catch (e) {
      print(e);
      throw Exception('Error occurred while fetching data');
    }
  }

  Future<ApiKeyResponse> fetchKey() async {
    try {
      final response = await _dio.get(apiKeyUrl);
      if (response.statusCode == 200) {
        // The response is expected to be JSON, so parse it as JSON
        final data = jsonDecode(response.data);
        return ApiKeyResponse.fromJson(data);
      } else {
        throw Exception(
            'Failed to load data, status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Failed to fetch API key: $e');
      throw Exception('Failed to fetch data: $e');
    }
  }
  Future<ApiResponse> uploadImageAndGetResults(File imageFile, String apiKey) async {
    try {
      _dio.options.headers['ailabapi-api-key'] = apiKey;

      var formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(imageFile.path),
      });

      final response = await _dio.post(url, data: formData);

      if (response.statusCode == 200) {
        return ApiResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to upload image');
      }
    } catch (e) {
      print('Error uploading image: $e');
      throw Exception('Error uploading image: $e');
    }
  }

  Future<String> sendMessage(String prompt) async {
    try {
      // Create a map containing the request data
      final Map<String, dynamic> requestData = {
        "message": prompt,
      };

      // Send POST request
      final response = await _dio.post(
        treatmentApiUrl,
        data: requestData,
      );

      if (response.statusCode == 200) {
        // Parse the response
        var responseData = response.data as Map<String, dynamic>;
        String responseMessage = responseData['message'];
        return responseMessage;
      } else {
        throw Exception('Failed to send message');
      }
    } catch (e) {
      print('Error sending message: $e');
      throw Exception('Failed to send message: $e');
    }
  }
}
