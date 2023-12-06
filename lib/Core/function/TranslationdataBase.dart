import 'package:deliverapp/Core/services/services.dart';
import 'package:get/get.dart';

translateDataBase(columnar,columnen){
  MyServices myServices=Get.find();

  if(myServices.sharedPref.getString("lang")=="ar"){

      return columnar;
  }else{
     return columnen;
  }
}