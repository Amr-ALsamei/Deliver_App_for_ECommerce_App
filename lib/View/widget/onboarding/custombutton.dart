import 'package:deliverapp/Controller/onboarding_controller.dart';
import 'package:deliverapp/Core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends GetView<OnBoardingControllerImpllement> {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child:MaterialButton(
                      textColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      onPressed: (){
                        controller.next();
                      },
                      child: Text("Continou"),
                      color: Appcolors.primarycolor,
                      ) ,
                  );
  }
}