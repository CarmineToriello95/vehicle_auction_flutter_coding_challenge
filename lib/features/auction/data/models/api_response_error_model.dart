import 'package:json_annotation/json_annotation.dart';

part 'api_response_error_model.g.dart';

@JsonSerializable()
class ApiResponseErrorModel {
  final String msgKey;
  final Map<String, dynamic> params;
  final String message;

  ApiResponseErrorModel({
    required this.msgKey,
    required this.params,
    required this.message,
  });

  factory ApiResponseErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseErrorModelToJson(this);
}
