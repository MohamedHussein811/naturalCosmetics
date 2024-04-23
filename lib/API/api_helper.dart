import 'dart:convert';

import 'package:dio/dio.dart';

import '../Model/conditions_model.dart';

class ApiService {
  final Dio _dio = Dio();
  final String url="https://www.ailabapi.com/api/portrait/analysis/skin-disease-detection";
  final String baseUrl ='https://raw.githubusercontent.com/KIRRAA0/natural_cosmetics_data/main/diseases_data.json';
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
