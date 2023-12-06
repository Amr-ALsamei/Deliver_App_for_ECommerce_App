 
 import 'package:deliverapp/Core/class/Crud.dart';
import 'package:deliverapp/linkAPI.dart';

class ArchiveOrderData {
  Crud crud;
  ArchiveOrderData(this.crud);

  getArchiveData(String deliveryId)async{
     var response=await crud.postData(AppLinks.archiveorders, {
      "deliveryId":deliveryId.toString()
     });
    return response.fold((l) => l, (r) => r);
  }

  // RatingOrdersData(String orderid,String comment,String rate)async{
  //    var response=await crud.postData(AppLinks.orderrating, {
  //     "orderId":orderid.toString(),
  //     "comment":comment.toString(),
  //     "rating": rate.toString()
  //    });
  //   return response.fold((l) => l, (r) => r);
  // }

  
 }
