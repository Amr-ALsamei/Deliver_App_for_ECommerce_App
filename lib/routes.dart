
import 'package:deliverapp/Core/Middleware/AppMiddleWare.dart';
import 'package:deliverapp/Core/constant/routesName.dart';
import 'package:deliverapp/View/screen/Auth/forgetPassword/SuccessedResetPassword.dart';
import 'package:deliverapp/View/screen/Auth/forgetPassword/forgetPassword.dart';
import 'package:deliverapp/View/screen/Auth/forgetPassword/resetPassword.dart';
import 'package:deliverapp/View/screen/Auth/forgetPassword/verfyCode.dart';
import 'package:deliverapp/View/screen/Auth/login.dart';
import 'package:deliverapp/View/screen/Onboarding.dart';
import 'package:deliverapp/View/screen/Orders/ArchiveScreen.dart';
import 'package:deliverapp/View/screen/Orders/TrackingScreen.dart';
import 'package:deliverapp/View/screen/Orders/detailsScreen.dart';
import 'package:deliverapp/View/screen/deliveryhome.dart';
import 'package:deliverapp/View/screen/language.dart';
// import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';



 List<GetPage<dynamic>>? routesPages=[
  
  GetPage(name: "/", page: ()=>Languages(),middlewares:[
    AppMiddleWare()
  ] ),
 
  
  GetPage(name: RoutesApp.login, page: ()=>LoginApp()),
  GetPage(name: RoutesApp.onbordingRoute, page: ()=>OnBoarding()),
  GetPage(name: RoutesApp.forgetpassword, page: ()=>ForgetPassword()),
  GetPage(name: RoutesApp.verfyCode, page: ()=>VerificationCode()),
  GetPage(name:  RoutesApp.resetpassword, page: ()=>ResetPassword()),
  GetPage(name: RoutesApp.SuccessResetPassword, page: ()=>SuccessedResetPassword()),
  GetPage(name: RoutesApp.deliveryhomepage, page: ()=>DeliveryHomePage()),
  GetPage(name: RoutesApp.ordersdetailspage, page: ()=>OrdersDetailsScreen()),
  GetPage(name: RoutesApp.archiveorderpage, page: ()=>DeliveryArchiveScreen()),
   GetPage(name: RoutesApp.orderstracking, page: ()=>OrdersTrackinScreen()),
  
 ];



