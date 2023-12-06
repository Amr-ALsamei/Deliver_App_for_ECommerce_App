import 'package:deliverapp/Core/class/Crud.dart';
import 'package:deliverapp/linkAPI.dart';

class VeryfyCodeSignupData {
  Crud crud;
  VeryfyCodeSignupData(this.crud);

  VerfyCodeSignupPostData(String emal,String verfycode)async{
     var response=await crud.postData(AppLinks.verfycode, {
      "verfiycode":verfycode,
      "email":emal,
     
     });
    return response.fold((l) => l, (r) => r);
  }

   ResendVerfyCodeSignup(String emal)async{
     var response=await crud.postData(AppLinks.resendVerfycode, {
      "email":emal,
     
     });
    return response.fold((l) => l, (r) => r);
  }
 }