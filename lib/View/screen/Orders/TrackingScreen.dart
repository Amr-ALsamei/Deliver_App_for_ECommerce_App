import 'package:deliverapp/Controller/orders/Tracking_controller.dart';
import 'package:deliverapp/Core/class/handlingdataview.dart';
import 'package:deliverapp/Core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrdersTrackinScreen extends StatelessWidget {
  const OrdersTrackinScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    // ignore: unused_local_variable
    TrackingController controller=Get.put(TrackingController());
    return Scaffold(
      appBar: AppBar(title: Text("Orders Tracking"),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 5),
        child: GetBuilder<TrackingController>(
          builder: (controller) {
            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Column(
              children: [

              
                 Expanded(
                   child: Container(
                      padding: EdgeInsets.only(top: 5),
                      width: double.infinity,
                      child: GoogleMap(
                        polylines: controller.polylineset,
                         mapType: MapType.normal,
                         markers: controller.markers.toSet(),
                          initialCameraPosition:controller.kGooglePlex!,
                          onMapCreated: (GoogleMapController controllermap) {
                                          controller.gmc=controllermap;
                                          },
                                        ),
                    ),
                 ),
                 Container(
                  width: double.infinity,
                   child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Appcolors.primarycolor),
                    onPressed: (){
                      controller.doneDelivery();
                    }, child: Text("Done Delivery",style: TextStyle(color: Colors.white),)),
                 )
              ],
                ),
            );
          }
        ),),
    );
  }
}