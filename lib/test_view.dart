//  import 'package:e_commerceapp/controller/test_controller.dart';
// import 'package:e_commerceapp/core/class/handlingdataview.dart';
// import 'package:e_commerceapp/core/constant/colors.dart';
// // import 'package:e_commerceapp/core/class/statusrequest.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class TestView extends StatelessWidget {
//   const TestView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(TestController());
//     return Scaffold(
//       appBar: AppBar(title:const Text("Test"),
//       backgroundColor: Appcolors.primarycolor,
//       ),
//       body: GetBuilder<TestController>(builder: (controller) {
//         return HandlingDataView(
//           statusRequest:controller.statusRequest ,
//           widget:ListView.builder(
//             itemCount: controller.data.length,
//             itemBuilder: (context,index){
//              return Text("${controller.data}");
//           }) ,);
        
//       },
//       ),
//     );
//   }
// }