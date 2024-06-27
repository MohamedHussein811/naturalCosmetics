import 'dart:convert';

import 'package:dio/dio.dart';

import '../Model/api_key_model.dart';
import '../Model/conditions_model.dart';

class ApiService {
  final Dio _dio = Dio();
  final String url =
      "https://www.ailabapi.com/api/portrait/analysis/skin-disease-detection";
  final String baseUrl =
      'https://raw.githubusercontent.com/KIRRAA0/natural_cosmetics_data/main/diseases_data.json';
  final String APIUrl =
      'https://raw.githubusercontent.com/KIRRAA0/AIlabTools_API_KEY/main/api_key.json?token=GHSAT0AAAAAACRBKUF2GIWNSPDJZ6JUVNV2ZRVDCXA';

  Future<List<Condition>> fetchConditions() async {
    try {
      final response = await _dio.get(baseUrl);
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
      final response = await _dio.get(APIUrl);
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
}
