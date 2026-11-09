/// Response models for the MIME Type Lookup API.

/// API Response wrapper.
class MimetypelookupResponse {
  final String status;
  final dynamic error;
  final MimetypelookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MimetypelookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MimetypelookupResponse.fromJson(Map<String, dynamic> json) => MimetypelookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MimetypelookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the MIME Type Lookup API.

class MimetypelookupData {
  num? count;
  List<MimetypelookupDataResultsItem>? results;

  MimetypelookupData({
    this.count,
    this.results,
  });

  factory MimetypelookupData.fromJson(Map<String, dynamic> json) => MimetypelookupData(
      count: json['count'],
      results: (json['results'] as List?)?.map((e) => MimetypelookupDataResultsItem.fromJson(e)).toList(),
    );
}

class MimetypelookupDataResultsItem {
  String? extension;
  String? mimeType;
  String? category;
  dynamic charset;
  bool? compressible;
  String? source;
  List<String>? extensions;

  MimetypelookupDataResultsItem({
    this.extension,
    this.mimeType,
    this.category,
    this.charset,
    this.compressible,
    this.source,
    this.extensions,
  });

  factory MimetypelookupDataResultsItem.fromJson(Map<String, dynamic> json) => MimetypelookupDataResultsItem(
      extension: json['extension'],
      mimeType: json['mimeType'],
      category: json['category'],
      charset: json['charset'],
      compressible: json['compressible'],
      source: json['source'],
      extensions: (json['extensions'] as List?)?.cast<String>(),
    );
}

class MimetypelookupRequest {
  String extension;

  MimetypelookupRequest({
    required this.extension,
  });

  Map<String, dynamic> toJson() => {
      'extension': extension,
    };
}
