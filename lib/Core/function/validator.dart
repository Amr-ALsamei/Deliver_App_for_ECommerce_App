import 'package:get/get.dart';

ValidInput(String val,int min,int max,String typ){
  if(typ=="username"){
    if(!GetUtils.isUsername(val)){
      return "not valid username";
    }
  }

  if(typ=="email"){
    if(!GetUtils.isEmail(val)){
      return "not valid email";
    }
  }

 

  if(typ=="phone"){
    if(!GetUtils.isPhoneNumber(val)){
      return "not valid phone";
    }
  }
   
   if(val.isEmpty){
    return "can't be Empty";
   }
  if(val.length<min){
    return "value can't be less than $min";
  }

  if(val.length>max){
    return "value can't be larger than $max";
  }
}