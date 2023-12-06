import 'package:deliverapp/Core/class/Crud.dart';
import 'package:deliverapp/linkAPI.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);

  ResetpasswordPostData(String emal,String password)async{
     var response=await crud.postData(AppLinks.resetpassword, {
      "email":emal,
      "password":password,
     });
    return response.fold((l) => l, (r) => r);
  }
 }