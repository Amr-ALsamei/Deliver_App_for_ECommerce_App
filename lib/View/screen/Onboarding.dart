
import 'package:deliverapp/Controller/onboarding_controller.dart';
import 'package:deliverapp/Core/constant/colors.dart';
import 'package:deliverapp/View/widget/onboarding/custombutton.dart';
import 'package:deliverapp/View/widget/onboarding/customslider.dart';
import 'package:deliverapp/View/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpllement());
    
    return  Scaffold(
      backgroundColor:Appcolors.background ,
      body: SafeArea(
        child: Column( 
          children: [
            Expanded(
              flex: 4,
              child:CustomSliderOnBoarding() ,
            ),
           Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotController(),
                  Spacer(flex: 2,),
                  CustomButton(),
                ],
              )
              )
          ],
        ),
      ),
    );
  }
}