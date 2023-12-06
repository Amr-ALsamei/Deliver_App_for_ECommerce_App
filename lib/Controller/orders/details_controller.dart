import 'dart:async';

import 'package:deliverapp/Core/class/statusrequest.dart';
import 'package:deliverapp/Core/function/handlingdata.dart';
import 'package:deliverapp/Data/DataSource/remote/orders/details_data.dart';
import 'package:deliverapp/Data/Model/CartModel.dart';
import 'package:deliverapp/Data/Model/ordersModel.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrdersDetailsController extends GetxController{

  late OrdersModel ordersModel;

 late Completer<GoogleMapController> completercontroller; 
  //  Position? position; 
    CameraPosition? kGooglePlex ;//Camera Position

    List <Marker> markers=[];
   
  OrderDetailsData orderDetailsData=OrderDetailsData(Get.find());//Get.find() Takes from initialBinding
  List<CartModel> data=[];
 
  StatusRequest statusRequest=StatusRequest.None;

initialDataPosition(){
  completercontroller=Completer<GoogleMapController>();
  if(ordersModel.orderType==0){
    kGooglePlex= CameraPosition(
    target: LatLng(double.parse(ordersModel.addressLat.toString()), 
                   double.parse(ordersModel.addressLong.toString()),),
    zoom: 12.4746,
  );
  markers.add(Marker(markerId: MarkerId("1"),
                              position:LatLng(double.parse(ordersModel.addressLat.toString()), 
                              double.parse(ordersModel.addressLong.toString()),),
                               )
                              );
  }
 }
////////////////////////////
  @override
  void onInit() {
    ordersModel=Get.arguments["ordermodel"];
    
    initialDataPosition();
    getDetailsData();
    super.onInit();
  }
///////////////////////////////////
getDetailsData()async{
    statusRequest=StatusRequest.loading;
    var response=await orderDetailsData.getData(ordersModel.orderID!);
    statusRequest=handlingData(response);

    if(StatusRequest.success==statusRequest){
     if(response['status']=="success") {
       List listData=response['data'];
      //  data.addAll(listData);
        data.addAll(listData.map((e) => CartModel.fromJson(e)));
        print(listData);
        }else{
          statusRequest=StatusRequest.failure;
        }
    }
    update();
  }
/////////////////////////////////
}