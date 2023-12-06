
import 'package:deliverapp/Controller/orders/archive_controller.dart';
import 'package:deliverapp/Core/class/handlingdataview.dart';
import 'package:deliverapp/View/widget/orders/orderslistArchiveCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeliveryArchiveScreen extends StatelessWidget {
  const DeliveryArchiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ArchiveOrdersController());
    return  Scaffold(
      appBar: AppBar(title: Text("Archive")),
      body: Container(
          padding: EdgeInsets.all(10),
          child: GetBuilder<ArchiveOrdersController>(
            builder: (controller) {
              return HandlingDataView(statusRequest: controller.statusRequest,
                widget: ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) => CardOrdersArchive(listdata: controller.data[index],),
              
                
                    ),
              );
            }
          ),),
    );
    
  }
}