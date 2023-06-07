import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/vehicle.dart';

part 'vehicle_model.g.dart';

@JsonSerializable()
class VehicleModel extends Vehicle {
  VehicleModel({
    required super.make,
    required super.model,
    required super.containerName,
    required super.similarity,
    required super.externalId,
  });

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleModelToJson(this);
}
