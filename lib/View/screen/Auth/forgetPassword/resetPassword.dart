

import 'package:deliverapp/Controller/Auth/resetPasswordController.dart';
import 'package:deliverapp/Core/constant/colors.dart';
import 'package:deliverapp/Core/function/validator.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/customButtonAuth.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/customformLabel.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/customformText.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/customformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
   Get.lazyPut(()=>ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:Text( "Reset Password",style: Theme.of(context).textTheme.headline1,),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Appcolors.background,
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
        builder: (controller)=>Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
                  children: [
                
                   const CustumFormLable(label: "New Password",),
        
                   const SizedBox(height: 10,),
                 const  CustumFormText(text: " Please Enter New Password"),
        
                  const SizedBox(height: 30,),
                    Form(
                      key: controller.formstateRestpassword,
                      child: Column(
                      children: [
                       GetBuilder<ResetPasswordControllerImp>(
                        builder: (controller){
                            return  CustumFormField(
                              obsecureText: controller.isShowPassWord,
                              onTapIcon: () => controller.ShowPassWord(),
                             isNumber: false,
                             valid: (val) {
                                return  ValidInput(val!, 5, 30, "password");
                          },
                          label:"New Password" ,
                          hinttext: "Enter New Password",
                        icon: Icons.lock_outline,
                        mycontroller: controller.NewPassword);
                       }),
                        const SizedBox(height: 25,),
        
                        GetBuilder<ResetPasswordControllerImp>(
                          builder: (controller){
                          return CustumFormField(
                            obsecureText: controller.isShowPassWord1,
                            onTapIcon: () => controller.ShowPassWord1(),
                           isNumber: false,
                          valid: (val) {
                            return  ValidInput(val!, 5, 30, "password");
                          },
                          label:"Check New Password" ,
                        hinttext: "Re_Enter New Password",
                        icon: Icons.lock_outline,
                        mycontroller: controller.ReNewPassword);
                        }),
                        const SizedBox(height: 25,),
                        
                        
                      ],
              
                    ) ),
                    SizedBox(height: 30,),
                   
                    CustumButtonAuth(text: "Save",onPressed: () {
                       if(controller.NewPassword.text==controller.ReNewPassword.text){
                         controller.goTSuccessResetPassword();
                       }
                       else{
                        Get.defaultDialog(title: "Error",
                        middleText: "your Password Don't match"
                        
                        );
                       }
                      
                    },),
                   
                  ],
                ),
        ),
      ),
      
    );
  }
}