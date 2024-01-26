class ApiResponse {
  final int errorCode;
  final ErrorDetail errorDetail;
  final String logId;
  final String requestId;
  final Data data;

  ApiResponse({
    required this.errorCode,
    required this.errorDetail,
    required this.logId,
    required this.requestId,
    required this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
    errorCode: json['error_code'],
    errorDetail: ErrorDetail.fromJson(json['error_detail']),
    logId: json['log_id'],
    requestId: json['request_id'],
    data: Data.fromJson(json['data']),
  );
}

class ErrorDetail {
  final int statusCode;
  final String code;
  final String codeMessage;
  final String message;

  ErrorDetail({
    required this.statusCode,
    required this.code,
    required this.codeMessage,
    required this.message,
  });

  factory ErrorDetail.fromJson(Map<String, dynamic> json) => ErrorDetail(
    statusCode: json['status_code'],
    code: json['code'],
    codeMessage: json['code_message'],
    message: json['message'],
  );
}

class Data {
  final double imageQuality;
  final String bodyPart;
  final Map<String, double> resultsEnglish;
  final String imageType;

  Data({
    required this.imageQuality,
    required this.bodyPart,
    required this.resultsEnglish,
    required this.imageType,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    imageQuality: json['image_quality'],
    bodyPart: json['body_part'],
    resultsEnglish: Map.from(json['results_english'])
        .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
    imageType: json['image_type'],
  );
}
