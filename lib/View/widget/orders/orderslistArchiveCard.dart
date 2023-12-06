
import 'package:deliverapp/Controller/orders/archive_controller.dart';
import 'package:deliverapp/Core/constant/colors.dart';
import 'package:deliverapp/Core/constant/routesName.dart';
import 'package:deliverapp/Data/Model/ordersModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiffy/jiffy.dart';

class CardOrdersArchive extends GetView<ArchiveOrdersController> {
  final OrdersModel listdata;
  const CardOrdersArchive({super.key, required this.listdata});

  @override
  Widget build(BuildContext context) {
    return Card(child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Order number: ${listdata.orderID}",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    // Text(listdata.orderDateTime!)
                  
                    Text(Jiffy.parse(listdata.orderDateTime!).fromNow(),
                          style: TextStyle(color: Appcolors.primarycolor,fontWeight: FontWeight.bold),),
                  
                  ],
                ),
                Divider(),
                Text(listdata.orderType==0?"Order Type : Delivery":"Order Type : Recive"),
                Text("Order pice : ${listdata.orderPrice}\$"),
                Text("delivery price : ${listdata.orderPricedelivery}\$"),
                Text(listdata.orderPaymentMethod==0 ? "Payment Method : Cash on delivery": "Payment Method : Card"),

                Text(listdata.orderStatus==0 ? "Status Request : Pending Approval":
                     listdata.orderStatus==1 ? "Status Request : The order is being Prepared":
                     listdata.orderStatus==2 ? "Status Request :Ready to picked up by Delivery worker ":
                     listdata.orderStatus==3 ? "Status Request : On The Way ":
                     "Status Request : Archive"),
               
                Divider(),
                Row(
                  children: [
                    Text("Total price : ${listdata.orderTotalprice}\$",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Appcolors.primarycolor),
                    ),
                    Spacer(),
                    MaterialButton(
                      onPressed: (){
                        Get.toNamed(RoutesApp.ordersdetailspage,arguments: {
                          "ordermodel":listdata
                        });
                      },
                      child: Text("Details"),
                      color:Appcolors.thirdcolor ,
                      textColor: Colors.white,),
                     ///////////////////////////////////
                    SizedBox(width: 10,),
                  // if(listdata.ordersRating==0)
                  //   MaterialButton(
                  //     onPressed: (){
                  //       ShowDialogRating(context,listdata.orderID.toString());
                  //     },
                  //     child: Text("Rating"),
                  //     color:Appcolors.thirdcolor ,
                  //     textColor: Colors.white,),

                     
                  ],
                ),


              ],
            ),
          ),);
  }
}