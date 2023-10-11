import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMapScreen extends StatefulWidget {
  @override
  _MyMapScreenState createState() => _MyMapScreenState();
}

class _MyMapScreenState extends State<MyMapScreen> {
  GoogleMapController? _controller;

  final LatLng _initialPosition = LatLng(37.7749, -122.4194); // Initial map location

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Integration'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: _initialPosition, zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          setState(() {
            _controller = controller;
          });
        },
        // You can add markers, polylines, and other map elements here
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(
    home: MyMapScreen(),
  ));
}