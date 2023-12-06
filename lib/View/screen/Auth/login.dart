
import 'package:deliverapp/Controller/Auth/loginController.dart';
import 'package:deliverapp/Core/constant/colors.dart';
import 'package:deliverapp/Core/function/AlertExitApp.dart';
import 'package:deliverapp/Core/function/validator.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/customButtonAuth.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/customformLabel.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/customformText.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/customformfield.dart';
import 'package:deliverapp/View/widget/Auth_FormFields/logoAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
   Get.lazyPut(()=>LogInControllerImp());
    return Scaffold(
      appBar: AppBar(
        title:Text( "Sign In",style: Theme.of(context).textTheme.headline1,),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Appcolors.background,
      ),
      body:GetBuilder<LogInControllerImp>(
        builder: (controller)=> WillPopScope(
          onWillPop: AlertExitApp,
          child:  Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: ListView(
                    children: [
                     LogoAuth(),
                     const CustumFormLable(label: "Welcome Back",),
                  
                     const SizedBox(height: 10,),
                   const  CustumFormText(text: "Sign In with your Email and Password OR Continuoue with Social Media"),
                  
                    // const SizedBox(height: 30,),
                      Form(
                        key: controller.formstate,
                        child: Column(
                        children: [
                          CustumFormField(
                            isNumber: false,
                            valid: (val) {
                              return ValidInput(val!, 5, 100, "email");
                            },
                            label:"Email" ,hinttext: "Enter Your Email",
                          icon: Icons.email_outlined,
                          mycontroller: controller.email),
                          // const SizedBox(height: 25,),
                          GetBuilder<LogInControllerImp>(builder: (controller){
                            return CustumFormField(
                            obsecureText: controller.isShowPassword,
                            onTapIcon: () => controller.ShowPassword(),
                            isNumber: false,
                            valid: (val) {
                              return ValidInput(val!, 5, 30, "password");
                            },
                            label:"PassWord" ,hinttext: "Enter Your PassWord",
                          icon: Icons.lock_outline,
                          mycontroller: controller.password
                          );
                          })
                          
                        ],
                
                      ) ),
                      SizedBox(height: 20,),
                      InkWell(onTap: () {
                        controller.goToForgetPassword();
                      },
                        child: Text("Forget PassWord",textAlign: TextAlign.end,)),
                      SizedBox(height: 20,),
                      CustumButtonAuth(text: "Sign In",onPressed: () {
                        controller.login();
                      },),
                     
                      
                    ],
                  ),
                ),
          ),
              
        ),
      
    );
  }
}