import 'dart:convert';

// To parse this JSON data, do
//
//     final errorMessage = errorMessageFromJson(jsonString);

ErrorMessage errorMessageFromJson(String str) =>
    ErrorMessage.fromJson(json.decode(str));

String errorMessageToJson(ErrorMessage data) => json.encode(data.toJson());

class ErrorMessage {
  String status;
  bool success;
  String message;
  Error error;

  ErrorMessage({
    required this.status,
    required this.success,
    required this.message,
    required this.error,
  });

  factory ErrorMessage.fromJson(Map<String, dynamic> json) => ErrorMessage(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        error: Error.fromJson(json["error"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "message": message,
        "error": error.toJson(),
      };
}

class Error {
  int statusCode;
  String status;
  bool isOperational;

  Error({
    required this.statusCode,
    required this.status,
    required this.isOperational,
  });

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        statusCode: json["statusCode"],
        status: json["status"],
        isOperational: json["isOperational"],
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "status": status,
        "isOperational": isOperational,
      };
}
