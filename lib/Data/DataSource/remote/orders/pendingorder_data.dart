 
 import 'package:deliverapp/Core/class/Crud.dart';
import 'package:deliverapp/linkAPI.dart';
class PendingOrderData {
  Crud crud;
  PendingOrderData(this.crud);

  getPendingData()async{
     var response=await crud.postData(AppLinks.pendingorders, {  });
    return response.fold((l) => l, (r) => r);
  }
  approavPendingData(String orderid,String userid,String deliveryid)async{
     var response=await crud.postData(AppLinks.approavorders, {
      "orderId":orderid.toString(),
      "userId":userid.toString(),
      "deliveryId":deliveryid.toString()
       });
    return response.fold((l) => l, (r) => r);
  }

  
 }
