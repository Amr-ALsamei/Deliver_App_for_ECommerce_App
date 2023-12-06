import 'package:deliverapp/Core/class/Crud.dart';
import 'package:deliverapp/linkAPI.dart';

class AcceptedOrderData {
  Crud crud;
  AcceptedOrderData(this.crud);

  getData(String deliveryid)async{
     var response=await crud.postData(AppLinks.acceptedorders, {
      "deliveryId":deliveryid.toString()
     });
    return response.fold((l) => l, (r) => r);
  }

  doneDelivery(String orderid,String userid)async{
     var response=await crud.postData(AppLinks.doneorders, {
      "orderId":orderid.toString(),
      "userId":userid.toString()
     });
    return response.fold((l) => l, (r) => r);
  }
 }