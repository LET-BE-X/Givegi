import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';


class NewAddress extends StatefulWidget {
  List? data;
   NewAddress({Key? key, this.data});


  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:OpenStreetMapSearchAndPick(
          // center: LatLong(26.8302, 86.2666),
        onGetCurrentLocationPressed: () async{
          Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
          return LatLng(position.latitude, position.longitude);
        },


          buttonColor: Colors.green,
          hintText: "Search",
          buttonHeight: 40,
          buttonWidth: double.infinity,
          locationPinIconColor: Colors.green,
          buttonText: 'Save Address',
          onPicked: (pickedData) {
            widget.data?.add(pickedData.addressName);
            print(widget.data);
          },
        // onGetCurrentLocationPressed: GetcurrentPosition(FutureOr<LatLong>),


          ),
    );
  }
}
