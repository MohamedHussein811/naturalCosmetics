import 'package:dio/dio.dart';
import '../Model/skin_detection_api_model.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _api_key="yndxmf5NBpvFqYJU8ItSRM9GlOusFZhz5IDtsMvxVaWrAAk3emb4YZBferuOQUSQ";
  final String url="https://www.ailabapi.com/api/portrait/analysis/skin-disease-detection";
  Future<ApiResponse> fetchData() async {
    try {
      _dio.options.headers['ailabapi-api-key'] = _api_key;

      final response = await _dio.post(url);

      if (response.statusCode == 200) {
        return ApiResponse.fromJson(response.data);
      } else {
        // Handle non-200 responses
        throw Exception('Failed to load data');
      }
    } on DioException  catch (e) {
      // Handle Dio errors
      throw Exception('Failed to load data: ${e.message}');
    }
  }
}
