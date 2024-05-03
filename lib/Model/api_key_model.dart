class ApiKeyResponse {
  final String key;

  ApiKeyResponse({required this.key});

  factory ApiKeyResponse.fromJson(Map<String, dynamic> json) {
    return ApiKeyResponse(
      key: json['Key'] ?? '', // Safeguard for potential null values
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Key'] = key;
    return data;
  }
}
