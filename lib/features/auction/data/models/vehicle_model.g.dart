// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) => VehicleModel(
      make: json['make'] as String,
      model: json['model'] as String,
      containerName: json['containerName'] as String,
      similarity: json['similarity'] as int,
      externalId: json['externalId'] as String,
    );

Map<String, dynamic> _$VehicleModelToJson(VehicleModel instance) =>
    <String, dynamic>{
      'make': instance.make,
      'model': instance.model,
      'containerName': instance.containerName,
      'similarity': instance.similarity,
      'externalId': instance.externalId,
    };
