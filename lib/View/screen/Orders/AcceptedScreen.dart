
import 'package:deliverapp/Controller/orders/accepted_controller.dart';
import 'package:deliverapp/Core/class/handlingdataview.dart';
import 'package:deliverapp/View/widget/orders/orderslistCardAccepted.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryAcceptedScreen extends StatelessWidget {
  const DeliveryAcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AcceptedOrdersController());
    return  Container(
        padding: EdgeInsets.all(10),
        child: GetBuilder<AcceptedOrdersController>(
          builder: (controller) {
            return HandlingDataView(statusRequest: controller.statusRequest,
              widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) => CardOrdersAccepted(listdata: controller.data[index],),
            
              
                  ),
            );
          }
        ),);
    
  }
}