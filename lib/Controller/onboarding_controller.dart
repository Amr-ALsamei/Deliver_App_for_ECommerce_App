
import 'package:deliverapp/Core/constant/routesName.dart';
import 'package:deliverapp/Core/services/services.dart';
import 'package:deliverapp/Data/DataSource/static/static.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChange(int index);

}
class OnBoardingControllerImpllement extends OnBoardingController{
  late PageController pageController;

  int currentPage=0;
  
  MyServices myServices=Get.find();

  @override
  next() {
    currentPage++;
    if(currentPage> onboardinglist.length-1) {
       myServices.sharedPref.setString("step","1");
       Get.offAllNamed(RoutesApp.login);
    }else{
      pageController.animateToPage(currentPage, duration: Duration(microseconds: 700), 
    curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentPage=index;
    update();
  }

  @override
  void onInit() {
    pageController=PageController();
    super.onInit();
  }

}