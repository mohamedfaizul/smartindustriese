import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission/permission.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  LatLng _initialPosition = LatLng(11.004556, 76.961632);

//GoogleMapController _controller;
//Location _location = Location();

//void _onMapCreated(GoogleMapController _cntrl){
//  _location.on
//}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
//            height: MediaQuery.of(context).size.height /
//                2.2, // Also Including Tab-bar height.
//            child: GoogleMap(
//              initialCameraPosition:
//                  CameraPosition(target: _initialPosition, zoom: 100),
//              mapType: MapType.hybrid,
//              // onMapCreated: _onMapCreated,
//            ),
          ),
        ],
      ),
    );
  }
}
//    GoogleMap(
//
//    )
