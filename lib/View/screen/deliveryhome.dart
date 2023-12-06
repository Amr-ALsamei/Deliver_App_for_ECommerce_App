

import 'dart:io';

import 'package:deliverapp/Controller/homeScreen_controller.dart';
import 'package:deliverapp/Core/constant/colors.dart';
import 'package:deliverapp/View/widget/custombottomAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DeliveryHomePage extends StatelessWidget {
  const DeliveryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder:(controller)=> Scaffold(
        appBar: AppBar(title: Text("Orders")),
        
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(  ),
          notchMargin: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              ...List.generate(controller.listPages.length , (index) { 
               
              return   
               CustomBottomAppBar(onPressed: () {
                    controller.ChangePage(index);
                  },
                  title: controller.Bottomappbar[index]["title"],
                  icon: controller.Bottomappbar[index]["icon"],active:controller.currentpage==index? true:false,);
                  
                  }
                  ),
             
            ],
          ),
        ),
        
        body:WillPopScope(
          child: controller.listPages.elementAt(controller.currentpage),
          onWillPop: (){
            Get.defaultDialog(
              title: "Alert",
              middleText: "Do you want to Exit",
              onConfirm: (){
                exit(0);
              },
              onCancel: () {
                
              },
              buttonColor: Appcolors.primarycolor
              );
           return Future.value(false);
         })
      ),
    );
  }
}