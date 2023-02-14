import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MapRoute(),
    debugShowCheckedModeBanner: false,
  ));
}

// LOTS ROUTE
class MapRoute extends StatelessWidget {
  const MapRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(48, 2.28),
        zoom: 5.2,
        bounds: LatLngBounds(
          LatLng(51.74920, -0.56741),
          LatLng(51.24920, 0.56741),
        ),
        maxBounds: LatLngBounds(
          LatLng(-90, -180.0),
          LatLng(90.0, 180.0),
        ),
      ),
      children: [
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(48, 2.28),
              width: 80,
              height: 80,
              builder: (context) => FlutterLogo(),
            ),
          ],
        ),
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
      ],
    );
  }
}
