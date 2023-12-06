import 'package:deliverapp/Core/class/statusrequest.dart';
import 'package:deliverapp/Core/services/services.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController{
 initialData();
 getHomData();
 goToItems(List categories,int SelectedCat,String categoryId);
}

 class HomeControllerImp extends HomeController{
   MyServices myServices=Get.find();
  String? username;
  String? id;
 StatusRequest statusRequest=StatusRequest.None;
//  HomeData homeData=HomeData(Get.find());
 List items=[];
 List categories=[];
 List textSetting=[];
 String? lang;

 

 @override
  initialData(){
  lang=myServices.sharedPref.getString("lang");
  username=myServices.sharedPref.getString("username");
  id=myServices.sharedPref.getString("Id");
  }

  
  
  // @override
  // getHomData()async {
  //  statusRequest=StatusRequest.loading;
  //  update();
  //   var response=await homeData.getHomeData();
  //   statusRequest=handlingData(response);
  //   print(response);
  //   if(StatusRequest.success==statusRequest){
  //    if(response['status']=="success") {
  //       categories.addAll(response['categories']['data']);
  //       items.addAll(response['items']['data']);
  //       textSetting.addAll(response['textsetting']['data']);
  //       }else{
  //         statusRequest=StatusRequest.failure;
  //       }
  //   }
  //   update();
  // }




   @override
  goToItems(categories,SelectedCat,categoryId) {
    // Get.toNamed(RoutesApp.items,arguments: {
    //   "Categories":categories,
    //   "SelectedCat":SelectedCat,
    //   "categoryid":categoryId,
    //   "userid":id
    // });
  }



  @override
  void onInit() {
    // searhitem=TextEditingController();
    
    initialData();
    getHomData();
    super.onInit();
  }
  
  @override
  getHomData() {
    // TODO: implement getHomData
    throw UnimplementedError();
  }
  
 
}

// class SearchMixinController extends GetxController{

// StatusRequest statusRequest=StatusRequest.None;
// HomeData homeData=HomeData(Get.find());
// TextEditingController? searhitem;
//  bool isSearch=false;
//  List<ItemModel> itemsModel=[];

//  checkSearch(val){
//   if(val==""){
//     statusRequest=StatusRequest.None;
//     isSearch=false;
//   }
//   update();
//  }

//  onSearchItem(){
//   isSearch=true;
//   searchItemData();
//   update();
//  }

//  searchItemData()async {
//    statusRequest=StatusRequest.loading;
//    update();
//     var response=await homeData.searchData(searhitem!.text);
//     statusRequest=handlingData(response);
//     print(response);
//     if(StatusRequest.success==statusRequest){
//      if(response['status']=="success") {
//       itemsModel.clear();
//       List responsedata=response['data'];
//         itemsModel.addAll(responsedata.map((e) => ItemModel.fromJson(e)));
        
//         }else{
//           statusRequest=StatusRequest.failure;
//         }
//     }
//     update();
//   }

// goToProductDetails(itemModel) {
//     Get.toNamed(RoutesApp.productdetails,
//     arguments: {
//       'itemsmodel':itemModel
//     });
//   }

  
// }

