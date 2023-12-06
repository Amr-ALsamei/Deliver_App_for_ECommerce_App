
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import "package:http/http.dart" as http;


Future getPolyLine(lat,long,destlat,destlong)async{
   Set<Polyline> polylineset={};
   List<LatLng> polylineco=[];
   PolylinePoints polylinePoints=PolylinePoints();
   
   String url="https://maps.googleapis.com/maps/api/directions/json?origin=$lat,$long&destination=$destlat,$destlong&key=AIzaSyDxQTeP2X3vyDQNtXhECzVfDSjZL8hgrpQ";
 
 var response=await http.post(Uri.parse(url));

// https://maps.googleapis.com/maps/api/directions/json?origin=13.583465,44.0189567&destination=13.583465,44.0189567&key=AIzaSyDxQTeP2X3vyDQNtXhECzVfDSjZL8hgrpQ
   var responsebody=jsonDecode(response.body);
   print("The response Body is $responsebody");
   var point=responsebody['routes'][0]['overview_polyline']['points'];

   List<PointLatLng> result = polylinePoints.decodePolyline(point);

   if(result.isNotEmpty){
    result.forEach((PointLatLng pointLatLng) { 
      polylineco.add(LatLng(pointLatLng.latitude, pointLatLng.longitude));
    });
   }
  

  Polyline polyline=Polyline(polylineId: PolylineId("amr"),color: Colors.purpleAccent,width: 5,points: polylineco);
  polylineset.add(polyline);

  return polylineset;

}

///////////////////////////////////////////////
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:http/http.dart' as http;


// getPolyLinePoint(lat, lot, deslat, deslot) async {
//   PolylinePoints polylinePoints = PolylinePoints();
//   Set<Polyline> polylineset = {};
//   List<LatLng> polylinecor = [];


//   var response = await http.post(Uri.parse(uri));
//   var responsebody = jsonDecode(response.body);
//   var point = responsebody['routes'][0]['overview_polyline']['points'];
//   List<PointLatLng> result = polylinePoints.decodePolyline(point);
//   if (result.isNotEmpty) {
//     result.forEach((PointLatLng pointLatLng) {
//       polylinecor.add(LatLng(pointLatLng.latitude, pointLatLng.longitude));
//     });
//   }
//   Polyline polyline = Polyline(
//       polylineId: PolylineId("polyline"),
//       points: polylinecor,
//       width: 5,
//       color: Color(0xff3498db));
//   polylineset.add(polyline);
//   return polylineset;
// }
//////////////////////////////////////////////