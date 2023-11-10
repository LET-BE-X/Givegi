import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';
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
          center: LatLong(26.8302, 86.2666),
          buttonColor: Colors.green,
          hintText: "Search",
          buttonHeight: 40,
          buttonWidth: double.infinity,
          locationPinIconColor: Colors.green,
          buttonText: 'Save Address',



          onPicked: (pickedData) {
            widget.data?.add(pickedData.addressName);
            print(widget.data);


          }),
    );
  }
}
