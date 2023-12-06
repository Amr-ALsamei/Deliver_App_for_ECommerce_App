import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliverapp/Controller/orders/accepted_controller.dart';
import 'package:deliverapp/Core/class/statusrequest.dart';
import 'package:deliverapp/Core/constant/routesName.dart';
import 'package:deliverapp/Core/function/getDecodePolyline.dart';
import 'package:deliverapp/Core/services/services.dart';
import 'package:deliverapp/Data/Model/ordersModel.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackingController extends GetxController{
 
  late OrdersModel ordersModel;
MyServices myServices=Get.find();
 GoogleMapController? gmc; 
 StatusRequest statusRequest=StatusRequest.success;
 Timer? timer;
  //  Position? position; 
    CameraPosition? kGooglePlex ;//Camera Position

    List <Marker> markers=[];

  StreamSubscription<Position>? positionStream;
  
  double? destlat;
  double? destlong;
  double? currentlat;
  double? currenlong;

 Set<Polyline> polylineset={};

 AcceptedOrdersController acceptedOrdersController=Get.find();

 doneDelivery()async{
  statusRequest=StatusRequest.loading;
  update();
  await acceptedOrdersController.doneDeliveryOrders(
  ordersModel.orderID.toString(), ordersModel.orderUserId.toString());
  Get.offAllNamed(RoutesApp.deliveryhomepage);
}
// package="com.example.deliverapp"
getCurrentLocation(){
  //////////////////
  
    kGooglePlex= CameraPosition(
    target: LatLng(double.parse(ordersModel.addressLat.toString()), 
                   double.parse(ordersModel.addressLong.toString()),),
    zoom: 12.4746,
  );
  
   markers.add(Marker(markerId: MarkerId("dest"),
                              position:LatLng(double.parse(ordersModel.addressLat.toString()), 
                              double.parse(ordersModel.addressLong.toString()),),
                               )
                              );
  /////////////////
   positionStream = Geolocator.getPositionStream().listen(
    (Position? position) {
      markers.removeWhere((element)=>element.markerId.value=="current");
      currentlat=position!.latitude;
      currenlong=position.longitude;
      print(position.latitude);
      print(position.longitude); 

      if(gmc !=null){
        gmc!.animateCamera(CameraUpdate.newLatLng(LatLng(currentlat!, currenlong!)));
      }
      markers.add(Marker(markerId: MarkerId("current"),
                              position:LatLng(position.latitude, 
                              position.longitude),
                               )
                              );
                update(); 
    });
   
}

refreshLocation()async{
  await Future.delayed(Duration(seconds: 2));
  timer=Timer.periodic(Duration(seconds: 10), (timer) {
    FirebaseFirestore.instance.collection("delivery").doc(ordersModel.orderID.toString()).set(
    {
      
      "lat":currentlat,
      "long":currenlong,
      "deliveryId":myServices.sharedPref.getString("Id"),
    });
   });
}

initPolyline()async{
  
  destlat=ordersModel.addressLat;
  destlong=(ordersModel.addressLong);
  await Future.delayed(Duration(seconds: 1));
  polylineset = await getPolyLine(currentlat, currenlong, destlat, destlong);
 update();
}

@override
  void onInit() {
    ordersModel=Get.arguments["ordermodel"];
     getCurrentLocation();
     refreshLocation();
     initPolyline();
    super.onInit();
  }

@override
  void onClose() {
    positionStream!.cancel();
    gmc!.dispose();
    timer!.cancel();
    super.onClose();
  }
// get current position
// Tracking


}