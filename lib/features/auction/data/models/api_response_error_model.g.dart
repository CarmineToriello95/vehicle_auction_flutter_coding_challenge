// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseErrorModel _$ApiResponseErrorModelFromJson(
        Map<String, dynamic> json) =>
    ApiResponseErrorModel(
      msgKey: json['msgKey'] as String,
      params: json['params'] as Map<String, dynamic>,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ApiResponseErrorModelToJson(
        ApiResponseErrorModel instance) =>
    <String, dynamic>{
      'msgKey': instance.msgKey,
      'params': instance.params,
      'message': instance.message,
    };
