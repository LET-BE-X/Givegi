import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';


class NewAddress extends StatefulWidget {
  const NewAddress({Key? key}) : super(key: key);


  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {

  final _mapController = MapController.customLayer(
    initPosition: GeoPoint(
      latitude: 26.8302,
      longitude: 86.2666,
    ),
    customTile: CustomTile(
      sourceName: "opentopomap",
      tileExtension: ".png",
      minZoomLevel: 4,
      maxZoomLevel: 19,
      urlsServers: [
        TileURLs(
          url: "https://tile.opentopomap.org/",
          subdomains: [],
        )
      ],
      tileSize: 256,
    ),

  );
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:OSMFlutter(controller: _mapController, mapIsLoading: const Center(child: const CircularProgressIndicator()),osmOption: OSMOption(
        zoomOption: const ZoomOption(
          initZoom: 13,
          minZoomLevel: 2,
          maxZoomLevel: 19,
          stepZoom: 1.0,
        ),
        userLocationMarker: UserLocationMaker(
          personMarker: const MarkerIcon(
            icon: Icon(
              Icons.location_history_rounded,
              color: Colors.green,
              size: 20,
            ),
          ),
          directionArrowMarker:const MarkerIcon(
            icon: Icon(
              Icons.double_arrow,
              size: 48,
            ),
          ),
        ),
        roadConfiguration:const RoadOption(
          roadColor: Colors.yellowAccent,
        ),
        markerOption: MarkerOption(
            defaultMarker:const MarkerIcon(
              icon: Icon(
                Icons.person_pin_circle,
                color: Colors.blue,
                size: 56,
              ),
            )
        ),
      )),
      bottomSheet:  SizedBox(
          width: double.infinity,
          height: 70,
          child: ElevatedButton(onPressed: (){
            Get.to(()=>Address());
          }, child:const Text("Save Address",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),)),
    );
  }
}
