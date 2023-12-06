import 'package:deliverapp/View/screen/Orders/AcceptedScreen.dart';
import 'package:deliverapp/View/screen/Orders/deliverSettingScreen.dart';
import 'package:deliverapp/View/screen/Orders/ApendingScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController{

  ChangePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController{
 int currentpage=0;
 List<Widget> listPages=[
  const  DeliveryPendingScreen(),
  const DeliveryAcceptedScreen(),
  DeliverySettingsScreen(),


 ];

 List Bottomappbar=[
  { "title":"Pendding","icon":Icons.padding_outlined},
  { "title":"Accepted","icon":Icons.accessibility_new_sharp},
  
 
  {"title": "Settings","icon":Icons.settings},
 
 ];

  @override
  ChangePage(int i) {
    currentpage=i;
    update();
  }

}