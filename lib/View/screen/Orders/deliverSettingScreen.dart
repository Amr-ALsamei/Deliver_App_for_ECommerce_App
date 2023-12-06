
import 'package:deliverapp/Core/constant/colors.dart';
import 'package:deliverapp/Core/constant/imageAssest.dart';
import 'package:deliverapp/Core/constant/routesName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DeliverySettingsScreen extends StatelessWidget {
  const DeliverySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15,left: 5,right: 5),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Appcolors.thirdcolor,
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            Positioned(
              bottom: -20,
              right: 150,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage(AppImageAssets.avatar,),),
                  borderRadius: BorderRadius.circular(100),
                  color: Appcolors.primarycolor
                ),)
                ),
                
          ],
        ),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
                  children: [
                    Card(
                      child: ListTile(
                          title: Text("Archive",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          trailing: Icon(Icons.archive_rounded),
                          onTap: (){
                            Get.toNamed(RoutesApp.archiveorderpage);
                          },
                        ),
                    ),
                    Card(
                      child: ListTile(
                          title: Text("Archive",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          trailing: Icon(Icons.archive_rounded),
                          onTap: (){
                            Get.defaultDialog(title: "alert");
                          },
                        ),
                    )
                    ],
                  ),
        )
      ],
      );
  }
}