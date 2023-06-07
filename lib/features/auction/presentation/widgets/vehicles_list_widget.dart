import 'package:flutter/material.dart';

import '../../domain/entities/vehicle.dart';

class VehiclesListWidget extends StatelessWidget {
  final List<Vehicle> vehicles;
  final Function(int)? onVehicleTap;
  const VehiclesListWidget({
    super.key,
    required this.vehicles,
    this.onVehicleTap,
  });

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (_, i) => Card(
          child: ListTile(
            title: Text(vehicles[i].make + vehicles[i].model),
            subtitle: Text(vehicles[i].containerName),
            onTap: () => onVehicleTap?.call(i),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      );
}
