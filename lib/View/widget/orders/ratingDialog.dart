// import 'package:e_commerceapp/controller/orders/archive_controller.dart';
// import 'package:e_commerceapp/core/constant/colors.dart';
// import 'package:e_commerceapp/core/constant/imageAssest.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:rating_dialog/rating_dialog.dart';



//     void ShowDialogRating(BuildContext context,String orderid){
//       showDialog(
//       context: context,
//       barrierDismissible: true, // set to false if you want to force a rating
//       builder: (context) => RatingDialog(
//       initialRating: 1.0,
//       // your app's name?
//       title: Text(
//         'Rating Dialog',
//         textAlign: TextAlign.center,
//         style: const TextStyle(
//           fontSize: 25,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       // encourage your user to leave a high rating?
//       message: Text(
//         'Tap a star to set your rating. Add more description here if you want.',
//         textAlign: TextAlign.center,
//         style: const TextStyle(fontSize: 15),
//       ),
//       // your app's logo?
//       image:Image.asset(AppImageAssets.logo,width: 150,height: 150,),
//       submitButtonTextStyle: TextStyle(color: Appcolors.primarycolor,fontSize: 18,fontWeight:FontWeight.bold ),
//       starColor: Appcolors.primarycolor,
//       submitButtonText: 'Submit',
//       commentHint: 'Set your custom comment hint',
//       onCancelled: () => print('cancelled'),
//       onSubmitted: (response) {
//         ArchiveOrdersController controller=Get.find();
//         controller.SubmitRating(orderid,response.rating,response.comment);
//         print('rating: ${response.rating}, comment: ${response.comment}');

//         // TODO: add your own logic
        
//       },
//     ),
//     );
//     }
