import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatefulWidget {
  GoogleMapWidget({Key? key}) : super(key: key);

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  Completer<GoogleMapController> _mapController = Completer();
  static final CameraPosition _initialPosition = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14.0);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      zoomControlsEnabled: false,
      initialCameraPosition: _initialPosition,
      onMapCreated: (GoogleMapController controller) {
        _mapController.complete(controller);
      },
    );
  }
}
