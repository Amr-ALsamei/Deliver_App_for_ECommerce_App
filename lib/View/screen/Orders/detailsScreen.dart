import 'package:deliverapp/Controller/orders/details_controller.dart';
import 'package:deliverapp/Core/class/handlingdataview.dart';
import 'package:deliverapp/Core/constant/colors.dart';
import 'package:deliverapp/Core/constant/routesName.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrdersDetailsScreen extends StatelessWidget {
  const OrdersDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    OrdersDetailsController controller=Get.put(OrdersDetailsController());
    return Scaffold(
      appBar: AppBar(title: Text("Orders Details"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GetBuilder<OrdersDetailsController>(
          builder: (controller) {
            return HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Table(
                          children: [
                            TableRow(children: [
                              Text("Item",textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Appcolors.primarycolor),),
                              Text("QTY",textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Appcolors.primarycolor)),
                              Text("Price",textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Appcolors.primarycolor))
                            ]),
                                
                            ...List.generate(controller.data.length,
                             (index) => TableRow(children: [
                              Text(controller.data[index].itemName!,textAlign: TextAlign.center,),
                              Text(controller.data[index].itemCount.toString() ,textAlign: TextAlign.center,),
                              Text(controller.data[index].itemPrice.toString(),textAlign: TextAlign.center,)
                            ])),
                                
                            
                          ],
                        ),
                        SizedBox(height: 10,),
                         Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Total Price : ${controller.ordersModel.orderTotalprice}\$",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Appcolors.primarycolor),),
                  ),
                      ],
                    ),
                  ),
                ),
                
                
              if(controller.ordersModel.orderType==0)
                Card(child: Container(child: ListTile(
                   title: Text("Shipping Address",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Appcolors.primarycolor)),
                   subtitle: Text("${controller.ordersModel.addressCity} ${controller.ordersModel.addressStreet}"),
                ),
                ),
                ),

              if(controller.ordersModel.orderType==0)
                Card(
                  child: Container(
                    padding: EdgeInsets.all(6),
                    height: 300,
                    width: double.infinity,
                    child: GoogleMap(
                                        mapType: MapType.normal,
                                        markers: controller.markers.toSet(),
                                  
                                        initialCameraPosition:controller.kGooglePlex!,
                                        onMapCreated: (GoogleMapController controllermap) {
                                        controller.completercontroller.complete(controllermap);
                                        },
                                      ),
                  ),
                ),
                if(controller.ordersModel.orderType==0 && controller.ordersModel.orderStatus==3)
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Appcolors.primarycolor),
                  onPressed: (){
                     Get.toNamed(RoutesApp.orderstracking,arguments: {
                      "ordermodel":controller.ordersModel});
                 }, child: Text("Tracking",style: TextStyle(color: Colors.white),))
              ],
                ),
            );
          }
        ),),
    );
  }
}