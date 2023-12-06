
import 'package:deliverapp/Controller/Auth/SuccedResPassWordControler.dart';
import 'package:deliverapp/Core/constant/colors.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/customButtonAuth.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/customformText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessedResetPassword extends StatelessWidget {
  const SuccessedResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
  Get.lazyPut(()=>SuccessedResetPasswordControllerImp());
    return Scaffold(
      appBar:  AppBar(
        title:Text( "Successed ResetPassword",style: Theme.of(context).textTheme.headline1,),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Appcolors.background,
      ),
      backgroundColor: Appcolors.background,
      body: GetBuilder<SuccessedResetPasswordControllerImp>(
        builder: (controller)=>Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle_outline,size: 200,color: Appcolors.primarycolor,),
              CustumFormText(text:"Thanks for finished ResetPassword SuccessFully"),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                width: double.infinity,
                child: CustumButtonAuth(text: "Go To LogIn",onPressed: () {
                      controller.goToLogin();
                    },),
              ),]
              )
              ))
             
    );
  }
}