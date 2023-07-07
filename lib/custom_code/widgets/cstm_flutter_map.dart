// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as l;

class CstmFlutterMap extends StatefulWidget {
  const CstmFlutterMap({
    Key? key,
    this.width,
    this.height,
    // required this.lat,
    // required this.long,
    this.zoom,
    required this.latLag,
  }) : super(key: key);

  final double? width;
  final double? height;
  // final double lat;
  // final double long;
  final double? zoom;
  final LatLng latLag;

  @override
  _CstmFlutterMapState createState() => _CstmFlutterMapState();
}

class _CstmFlutterMapState extends State<CstmFlutterMap> {
  @override
  Widget build(BuildContext context) {
    /// user device latlang
    var userLatLng = l.LatLng(
      widget.latLag.latitude,
      widget.latLag.longitude,
    );

    final circleMarkers = <CircleMarker>[
      CircleMarker(
        point: userLatLng,
        color: Color(0x274285F4),
        borderStrokeWidth: 0,
        useRadiusInMeter: true,
        radius: 200, // 200 meters | 0.2 km
        borderColor: Colors.transparent,
      ),
    ];

    final markers = <Marker>[
      Marker(
        width: 20,
        height: 20,
        point: userLatLng,
        builder: (ctx) => Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Color(0xFFF99546),
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 3,
            ),
          ),
        ),
      ),
    ];
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: userLatLng,
          zoom: widget.zoom ?? 2,
        ),
        // nonRotatedChildren: [
        //   AttributionWidget.defaultWidget(
        //       source: "OpenStreetMap contributoes", onSourceTapped: () {}),
        // ],
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.mycompany.sphara',
          ),
          MarkerLayer(markers: markers),
          CircleLayer(circles: circleMarkers),
        ],
      ),
    );
  }
}
