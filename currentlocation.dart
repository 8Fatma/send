import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Set<Marker> mylist = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(0.0, 0.0), zoom: 10),
        markers: mylist,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_on_outlined),
        onPressed: () async {
          Location myloc = new Location();
          LocationData x = await myloc.getLocation();
          dynamic a = x.latitude;
          dynamic b = x.longitude;
          setState(() {
            mylist.add(Marker(
              markerId: MarkerId("hghgh"),
              position: LatLng(a, b),
              infoWindow: InfoWindow(snippet: "ddd", title: "ddd"),
            ));
          });
        },
      ),
    );
  }
}
