import 'dart:async';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyAddress extends StatefulWidget {
  @override
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  final _formKey = GlobalKey<FormState>();
  late LocationData _currentPosition;
  late GoogleMapController _controller;
  LatLng _initialCameraPosition = LatLng(31.582045, 74.329376);
  Location location = Location();

  @override
  void initState() {
    super.initState();
    getLoc();
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
    location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 15),
        ),
      );
    });
  }

  Widget _addressFields() {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your address";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Address',
              prefixIcon: Icon(Icons.home_sharp, size: 25),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your locality";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Locality',
              prefixIcon: Icon(Icons.streetview_sharp, size: 25),
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter your city";
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'City',
              prefixIcon: Icon(Icons.location_city_sharp, size: 25),
            ),
          ),
        ],
      ),
    );
  }

  Widget _processButton() {
    return InkWell(
      onTap: () {
        if (_formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange.shade700),
          color: Colors.yellow.shade800,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(
          child: Text(
            'Save',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              height: size.height * 0.34,
              width: size.width,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: _initialCameraPosition,
                  zoom: 15,
                ),
                mapType: MapType.normal,
                onMapCreated: _onMapCreated,
                myLocationEnabled: true,
              ),
            ),
            Flexible(
              flex: 1,
              child: ListView(
                children: [
                  Column(
                    children: <Widget>[
                      _addressFields(),
                      SizedBox(height: size.height * 0.01),
                      _processButton(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void getLoc() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _currentPosition = await location.getLocation();
    _initialCameraPosition = LatLng(
      _currentPosition.latitude!,
      _currentPosition.longitude!,
    );

    location.onLocationChanged.listen((LocationData currentLocation) {
      setState(() {
        _currentPosition = currentLocation;
        _initialCameraPosition = LatLng(
          _currentPosition.latitude!,
          _currentPosition.longitude!,
        );
      });
    });
  }
}
