// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:location/location.dart';
// import 'package:geocoder/geocoder.dart';
// import 'package:intl/intl.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:ride_booking/ui/HomeScreen/home_screen.dart';
//
// class Maps extends StatefulWidget {
//   @override
//   _MapsState createState() => _MapsState();
// }
//
// class _MapsState extends State<Maps> {
//   final _formKey = GlobalKey<FormState>();
//
//   LocationData _currentPosition;
//   String _address, _dateTime;
//   GoogleMapController mapController;
//   Marker marker;
//   Location location = Location();
//
//   GoogleMapController _controller;
//   LatLng _initialcameraposition = LatLng(0.5937, 0.9629);
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getLoc();
//   }
//
//   void _onMapCreated(GoogleMapController _cntlr) {
//     _controller = _controller;
//     location.onLocationChanged.listen((l) {
//       _controller.animateCamera(
//         CameraUpdate.newCameraPosition(
//           CameraPosition(target: LatLng(l.latitude, l.longitude), zoom: 15),
//         ),
//       );
//     });
//   }
//
//   Widget _addressFields() {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: <Widget>[
//           new ListTile(
//             leading: const Icon(Icons.person),
//             title: new TextFormField(
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return "Please enter your address";
//                 }
//                 return null;
//               },
//               decoration: new InputDecoration(
//                 hintText: "Complete Address",
//               ),
//             ),
//           ),
//           new ListTile(
//             leading: const Icon(Icons.phone),
//             title: new TextFormField(
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return "Please enter a landmark";
//                 }
//                 return null;
//               },
//               decoration: new InputDecoration(
//                 hintText: "Landmark",
//               ),
//             ),
//           ),
//           new ListTile(
//             leading: const Icon(Icons.email),
//             title: new TextFormField(
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return "Please enter your locality";
//                 }
//                 return null;
//               },
//               decoration: new InputDecoration(
//                 hintText: "Locality",
//               ),
//             ),
//           ),
//           new ListTile(
//             leading: const Icon(Icons.email),
//             title: new TextFormField(
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return "Please enter your city";
//                 }
//                 return null;
//               },
//               decoration: new InputDecoration(
//                 hintText: "City",
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//             child: ElevatedButton(
//               onPressed: () {
//                 if (_formKey.currentState.validate()) {
//                   Scaffold.of(context)
//                       .showSnackBar(SnackBar(content: Text('Processing Data')));
//                 }
//               },
//               child: Text('Submit'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Widget _addressOptions(){
//   //   return
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         leading: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => HomePage()),
//               );
//             },
//             child: Icon(Icons.arrow_back_sharp, size: 25)),
//         title: Text('Back'),
//         automaticallyImplyLeading: false,
//         actions: [],
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Container(
//           color: Colors.grey.withOpacity(.1),
//           child: Center(
//             child: Column(
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.35,
//                   width: MediaQuery.of(context).size.width,
//                   child: GoogleMap(
//                     initialCameraPosition: CameraPosition(
//                         target: _initialcameraposition, zoom: 15),
//                     mapType: MapType.normal,
//                     onMapCreated: _onMapCreated,
//                     myLocationEnabled: true,
//                   ),
//                 ),
//                 _addressFields()
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   getLoc() async {
//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;
//
//     _serviceEnabled = await location.serviceEnabled();
//     if (!_serviceEnabled) {
//       _serviceEnabled = await location.requestService();
//       if (!_serviceEnabled) {
//         return;
//       }
//     }
//
//     _permissionGranted = await location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }
//
//     _currentPosition = await location.getLocation();
//     _initialcameraposition =
//         LatLng(_currentPosition.latitude, _currentPosition.longitude);
//     location.onLocationChanged.listen((LocationData currentLocation) {
//       print("${currentLocation.longitude} : ${currentLocation.longitude}");
//       setState(() {
//         _currentPosition = currentLocation;
//         _initialcameraposition =
//             LatLng(_currentPosition.latitude, _currentPosition.longitude);
//
//         DateTime now = DateTime.now();
//         _dateTime = DateFormat('EEE d MMM kk:mm:ss ').format(now);
//         _getAddress(_currentPosition.latitude, _currentPosition.longitude)
//             .then((value) {
//           setState(() {
//             _address = "${value.first.addressLine}";
//           });
//         });
//       });
//     });
//   }
//
//   Future<List<Address>> _getAddress(double lat, double lang) async {
//     final coordinates = new Coordinates(lat, lang);
//     List<Address> add =
//     await Geocoder.local.findAddressesFromCoordinates(coordinates);
//     return add;
//   }
// }
