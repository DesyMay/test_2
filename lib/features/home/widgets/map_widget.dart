import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test_2/ui_utils/custom_map_icons.dart';

const CameraPosition _applePos = CameraPosition(
  target: LatLng(37.3346, -122.0090),
);

class MapWidget extends StatefulWidget {
  final CameraPosition initialCameraPosition;

  const MapWidget({
    super.key,
    this.initialCameraPosition = const CameraPosition(
      target: LatLng(-13.78635, 123.32062),
      zoom: 5,
    ),
  });

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: widget.initialCameraPosition,
      markers: {
        Marker(
          markerId: MarkerId("currentLocation"),
          position: widget.initialCameraPosition.target,
          icon: CustomMapIcons().shipIcon,
        ),
      },
    );
  }
}
