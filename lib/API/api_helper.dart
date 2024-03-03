import 'dart:convert';

import 'package:dio/dio.dart';

import '../Model/conditions_model.dart';

class ApiService {
  final Dio _dio = Dio();
  // final String _api_key="k7RWycBmrgACjrYfHoWetxi76YAg9i5T1ZUVMLSXFva4EydTleGEzJk2Nq2nUpwX";
  final String url="https://www.ailabapi.com/api/portrait/analysis/skin-disease-detection";
  final String baseUrl = 'https://raw.githubusercontent.com/MohamedHussein811/natural_cosmetics_data/main/diseases_data.json';

  // Future<ApiResponse> fetchData() async {
  //   print("TESTTTTTT");
  //   try {
  //     _dio.options.headers['ailabapi-api-key'] = _api_key;
  //
  //     final response = await _dio.post(url);
  //
  //     if (response.statusCode == 200) {
  //       print("=============================${response.data}");
  //       return ApiResponse.fromJson(response.data);
  //     } else {
  //       // Handle non-200 responses
  //       print("No");
  //       throw Exception('Failed to load data');
  //     }
  //   } on DioException  catch (e) {
  //     // Handle Dio errors
  //     throw Exception('Failed to load data: ${e.message}');
  //   }
  // }
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
}
