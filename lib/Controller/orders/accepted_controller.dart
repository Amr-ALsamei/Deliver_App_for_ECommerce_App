import 'package:deliverapp/Core/class/statusrequest.dart';
import 'package:deliverapp/Core/function/handlingdata.dart';
import 'package:deliverapp/Core/services/services.dart';
import 'package:deliverapp/Data/DataSource/remote/orders/accepted_data.dart';
import 'package:deliverapp/Data/Model/ordersModel.dart';
import 'package:get/get.dart';

class AcceptedOrdersController extends GetxController{

 List<OrdersModel> data=[];
 StatusRequest statusRequest=StatusRequest.None;
 AcceptedOrderData acceptedOrderData=AcceptedOrderData(Get.find());
 MyServices myServices=Get.find();

getAcceptedOrders()async {
    data.clear();
    statusRequest=StatusRequest.loading;
    update();
    var response=await acceptedOrderData.getData(myServices.sharedPref.getString("Id")!);
    statusRequest=handlingData(response);
    print(response);
    if(StatusRequest.success==statusRequest){
     if(response['status']=="success") {
      List respnseData=response['data'];
      data.addAll(respnseData.map((e) => OrdersModel.fromJson(e)));
      // print(data);
        }else{
          statusRequest=StatusRequest.failure;
        }
    }
    update();
  }

doneDeliveryOrders(String orderid,String userid)async {
    
    statusRequest=StatusRequest.loading;
    update();
    var response=await acceptedOrderData.doneDelivery(orderid,userid);
    statusRequest=handlingData(response);
    print(response);
    if(StatusRequest.success==statusRequest){
     if(response['status']=="success") {
      // List respnseData=response['data'];
      // data.addAll(respnseData.map((e) => OrdersModel.fromJson(e)));
      // print(data);
        }else{
          statusRequest=StatusRequest.failure;
        }
    }
    update();
  }

//////////////////////////////
refreshOrder(){
  getAcceptedOrders();
}
///////////////////////////////
  @override
  void onInit() {
    getAcceptedOrders();
    super.onInit();
  }
}